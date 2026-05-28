#!/bin/bash
#
# sourdough.ai installer
# Sets up the framework and creates your personal layer
#

set -e

echo "🍞 sourdough.ai installer"
echo "========================="
echo ""

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Darwin*)    PLATFORM="macos";;
    Linux*)     PLATFORM="linux";;
    *)          PLATFORM="unknown";;
esac

echo "Detected platform: ${PLATFORM}"

# Set default paths
FRAMEWORK_DIR="${SOURDOUGH_FRAMEWORK:-$HOME/sourdough.ai}"
DATA_DIR="${SOURDOUGH_DATA:-$HOME/ai-data}"

echo "Framework directory: ${FRAMEWORK_DIR}"
echo "Personal data directory: ${DATA_DIR}"
echo ""

# Check if we're in the right place
if [[ ! -f "${FRAMEWORK_DIR}/README.md" ]]; then
    echo "Error: Run this script from the sourdough.ai directory"
    exit 1
fi

# Link every framework skill into a target skills directory.
link_skills() {
    local target_dir="$1"
    mkdir -p "$target_dir"
    for skill_dir in "${FRAMEWORK_DIR}/skills"/*/; do
        local skill_name
        skill_name=$(basename "$skill_dir")
        if [[ -f "${skill_dir}/SKILL.md" ]] && [[ ! -e "${target_dir}/${skill_name}" ]]; then
            ln -sf "$skill_dir" "${target_dir}/${skill_name}"
            echo "  Linked skill: ${skill_name}"
        fi
    done
}

# --- Detect and confirm which AI agent (TUI) to set up for ---
HAS_CLAUDE=0; HAS_GEMINI=0
command -v claude >/dev/null 2>&1 && HAS_CLAUDE=1
command -v gemini >/dev/null 2>&1 && HAS_GEMINI=1

# Honor a non-interactive override: SOURDOUGH_AGENT=claude|gemini|both
AGENT_CHOICE=""
case "$(printf '%s' "${SOURDOUGH_AGENT:-}" | tr '[:upper:]' '[:lower:]')" in
    claude) AGENT_CHOICE="claude";;
    gemini) AGENT_CHOICE="gemini";;
    both)   AGENT_CHOICE="both";;
    "")     AGENT_CHOICE="";;
    *) echo "Warning: ignoring unknown SOURDOUGH_AGENT='${SOURDOUGH_AGENT}' (expected claude|gemini|both)";;
esac

if [[ -n "$AGENT_CHOICE" ]]; then
    echo "Agent selected via SOURDOUGH_AGENT: ${AGENT_CHOICE}"
else
    if [[ $HAS_CLAUDE -eq 1 && $HAS_GEMINI -eq 1 ]]; then
        DETECTED="both"; echo "Detected both Claude Code and Gemini CLI."
    elif [[ $HAS_CLAUDE -eq 1 ]]; then
        DETECTED="claude"; echo "Detected Claude Code."
    elif [[ $HAS_GEMINI -eq 1 ]]; then
        DETECTED="gemini"; echo "Detected Gemini CLI."
    else
        DETECTED="both"; echo "No agent CLI detected on PATH (looked for 'claude' and 'gemini')."
    fi

    if [[ -t 0 ]]; then
        echo ""
        echo "Which agent should I set up sourdough for?"
        echo "  1) Claude Code"
        echo "  2) Gemini CLI"
        echo "  3) Both"
        read -r -p "Choose [1/2/3] (default: ${DETECTED}): " REPLY_CHOICE
        case "${REPLY_CHOICE}" in
            1) AGENT_CHOICE="claude";;
            2) AGENT_CHOICE="gemini";;
            3) AGENT_CHOICE="both";;
            "") AGENT_CHOICE="${DETECTED}";;
            *) echo "Unrecognized choice; using default: ${DETECTED}"; AGENT_CHOICE="${DETECTED}";;
        esac
    else
        AGENT_CHOICE="${DETECTED}"
        echo "Non-interactive shell; using: ${AGENT_CHOICE} (set SOURDOUGH_AGENT to override)"
    fi
fi
echo "Setting up for: ${AGENT_CHOICE}"
echo ""

# Create personal data directory structure
echo "Creating personal data directory structure..."
mkdir -p "${DATA_DIR}/skills"
mkdir -p "${DATA_DIR}/learning"
mkdir -p "${DATA_DIR}/logs/sessions"
mkdir -p "${DATA_DIR}/memory"
mkdir -p "${DATA_DIR}/inbox"
mkdir -p "${DATA_DIR}/projects"
mkdir -p "${DATA_DIR}/cache"
mkdir -p "${DATA_DIR}/config"

# Create starter CLAUDE.md if it doesn't exist
if [[ ! -f "${DATA_DIR}/CLAUDE.md" ]]; then
    echo "Creating starter CLAUDE.md..."
    cat > "${DATA_DIR}/CLAUDE.md" << 'EOF'
# Claude Code Configuration

Personal instructions for your AI assistant. Claude Code reads this file at session start.

---

## About Me

<!-- Delete the examples and add your own context -->

I am a [your role] working on [your domain].

**Technical background**: [Your experience level and areas of expertise]

**Current projects**: [What you're actively working on]

---

## Working Preferences

### Communication Style
- Be concise by default; I'll ask if I want more detail
- Skip excessive enthusiasm - be direct and genuine
- Push back if my approach seems wrong

### Autonomy Level
- **Routine tasks**: Decide and implement, explain after
- **Significant changes**: Ask before proceeding
- Make commits at logical breakpoints without asking

### Error Handling
- Try 2-3 fixes before reporting an error to me
- You're likely better at debugging than I am

### File Operations
- Prefer editing existing files over creating new ones
- Always read a file before modifying it
- Don't create documentation unless I ask for it

---

## Session Logging

Log sessions to track what we accomplish across conversations.

**Location**: `~/ai-data/logs/sessions/YYYY-MM-DD.md`

At session end or natural breakpoints, update today's log with:
- What was accomplished
- Decisions made
- Files created/modified
- Next steps

See the session logging guide: `~/sourdough.ai/docs/session-logging.md`

---

## Learning

As we work together, capture observations about my patterns and preferences.

**User model**: `~/ai-data/learning/user_model.yaml`
- Write observations autonomously
- Note my corrections and stated preferences

**Approach registry**: `~/ai-data/learning/approach_registry/`
- Document what works for different problem types

See templates in `~/sourdough.ai/learning/templates/`

---

## Current Focus

<!-- Update this section regularly with what you're working on -->

**This week**:
- [ ] Task 1
- [ ] Task 2

**Active projects**:
- Project A: Brief status
- Project B: Brief status

---

## Custom Instructions

<!-- Add any specific instructions for your workflow -->

### Tools I Use
- [List your common tools, languages, frameworks]

### Conventions
- [Any coding conventions, naming patterns, etc.]

### Off-Limits
- [Anything Claude should avoid doing]

---

*Customize this file to make your AI assistant truly yours.*
*The more context you provide, the better it can help.*
EOF
fi

# Set up Python virtual environment if needed
if [[ ! -d "${FRAMEWORK_DIR}/engine/venv" ]]; then
    echo "Setting up Python virtual environment..."
    python3 -m venv "${FRAMEWORK_DIR}/engine/venv"
    source "${FRAMEWORK_DIR}/engine/venv/bin/activate"
    pip install --upgrade pip
    if [[ -f "${FRAMEWORK_DIR}/engine/requirements.txt" ]]; then
        pip install -r "${FRAMEWORK_DIR}/engine/requirements.txt"
    fi
    deactivate
fi

# Set up skills (and config) for the chosen agent(s)
if [[ "$AGENT_CHOICE" == "claude" || "$AGENT_CHOICE" == "both" ]]; then
    echo "Setting up Claude Code skills..."
    link_skills "${HOME}/.claude/skills"
fi

if [[ "$AGENT_CHOICE" == "gemini" || "$AGENT_CHOICE" == "both" ]]; then
    echo "Setting up Gemini CLI skills..."
    link_skills "${HOME}/.gemini/skills"
    # Gemini CLI reads GEMINI.md, not CLAUDE.md — give it its own copy of the
    # starter config. (Copy, not symlink, so behavior matches the Windows
    # installer and so editing one file doesn't silently mutate the other.)
    if [[ ! -e "${DATA_DIR}/GEMINI.md" ]] && [[ -f "${DATA_DIR}/CLAUDE.md" ]]; then
        cp "${DATA_DIR}/CLAUDE.md" "${DATA_DIR}/GEMINI.md"
        echo "  Created GEMINI.md (copy of CLAUDE.md — keep the two in sync if you edit them)"
    fi
fi

echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit ${DATA_DIR}/CLAUDE.md with your preferences"
case "$AGENT_CHOICE" in
    claude)
        echo "2. Start Claude Code in your home directory:  cd ~ && claude"
        echo "3. Kick off the guided lessons by typing:     Start lessons"
        ;;
    gemini)
        echo "2. Start Gemini CLI in your home directory:   cd ~ && gemini"
        echo "3. Kick off the guided lessons by typing:"
        echo "   Read ~/sourdough.ai/skills/lessons/SKILL.md and run the lessons with me from lesson 1."
        ;;
    both)
        echo "2. Start your agent in your home directory (cd ~ && claude  —or—  cd ~ && gemini)"
        echo "3. Kick off the guided lessons:"
        echo "   - Claude Code:  type  Start lessons"
        echo "   - Gemini CLI:   type  Read ~/sourdough.ai/skills/lessons/SKILL.md and run the lessons with me from lesson 1."
        ;;
esac
echo ""
echo "🍞 Your starter culture is ready. Time to feed it."
