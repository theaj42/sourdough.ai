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

# Create personal data directory structure
echo "Creating personal data directory structure..."
mkdir -p "${DATA_DIR}/skills"
mkdir -p "${DATA_DIR}/learning"
mkdir -p "${DATA_DIR}/logs/sessions"
mkdir -p "${DATA_DIR}/memory"
mkdir -p "${DATA_DIR}/inbox"
mkdir -p "${DATA_DIR}/projects"
mkdir -p "${DATA_DIR}/cache"

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

# Create symlinks for skills (optional)
echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit ${DATA_DIR}/CLAUDE.md with your preferences"
echo "2. Start a Claude Code session in your home directory"
echo "3. Begin using and customizing your assistant"
echo ""
echo "🍞 Your starter culture is ready. Time to feed it."
