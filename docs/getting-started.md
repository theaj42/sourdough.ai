# Getting Started

Get your sourdough starter culture up and running.

## Prerequisites

- An agentic CLI — [Claude Code](https://docs.anthropic.com/en/docs/claude-code) **or** [Gemini CLI](https://github.com/google-gemini/gemini-cli)
- Python 3.10+
- Git

New to this, or on a corporate machine? Walk through **[prerequisites.md](prerequisites.md)** first — it covers installing the agent, the corporate-account auth gotcha (Vertex AI), shell setup, and editors. That's where most first-time setup time actually goes.

## Installation

### 1. Clone the Framework

```bash
git clone https://github.com/yourusername/sourdough.ai.git ~/sourdough.ai
```

### 2. Run the Installer

```bash
cd ~/sourdough.ai
./install.sh
```

On Windows: `powershell -ExecutionPolicy Bypass -File .\install.ps1`

The installer detects whether you have Claude Code, Gemini CLI, or both, **asks you to confirm** which to set up, runs a quick prerequisite check, and creates:
- Python virtual environment
- Personal data directory (`~/ai-data/`)
- Starter `CLAUDE.md` (and a `GEMINI.md` copy if you chose Gemini — Gemini CLI reads `GEMINI.md`)
- Skill links in the chosen agent's directory

To skip the prompt for scripted/team rollouts: `SOURDOUGH_AGENT=gemini ./install.sh` (`claude` | `gemini` | `both`).

### 3. Configure Your Personal Layer

Edit `~/ai-data/CLAUDE.md` (and `~/ai-data/GEMINI.md` if you use Gemini — keep them in sync) with:
- Context about yourself
- How you like to work
- Current focus areas

### 4. Start Using It

```bash
cd ~
claude        # or: gemini
```

Your agent loads your config and you're ready to go.

**Kick off the guided lessons:**
- **Claude Code** — just type: `Start lessons`
- **Gemini CLI** — point it at the skill explicitly: `Read ~/sourdough.ai/skills/lessons/SKILL.md and run the lessons with me from lesson 1.`

> **Skills trigger a little differently per agent.** Claude Code discovers skills by name from `~/.claude/skills` and you can invoke them conversationally ("start lessons"). Gemini CLI is most reliable when you point it at the `SKILL.md` path directly the first time. Same skills, slightly different invocation.

## First Session

Try these to get familiar:

1. **Ask for help**: "What can you help me with?"
2. **Check skills**: "What skills are available?"
3. **Start learning**: Work on something real; the AI will begin observing your patterns

## Directory Structure

After installation:

```
~/sourdough.ai/        # Framework (git pull for updates)
├── engine/            # Core capabilities
├── skills/            # Base skills
├── learning/          # Learning framework templates
└── docs/              # Documentation

~/ai-data/             # Your personal layer (yours to customize)
├── skills/            # Your custom skills
├── learning/          # AI's learnings about you
├── logs/sessions/     # Session history
└── CLAUDE.md          # Your instructions
```

## Next Steps

- **Customize**: Edit your CLAUDE.md to reflect your preferences
- **Add skills**: Create custom skills in `~/ai-data/skills/`
- **Review learnings**: Periodically check what your AI is learning about you

## Troubleshooting

### My agent doesn't see my config
Claude Code loads `CLAUDE.md`; Gemini CLI loads `GEMINI.md`. Make sure you're starting the agent from a directory that loads it, and that the right file exists in `~/ai-data/`.

### Gemini CLI says my account "is not eligible for Gemini Code Assist for individuals"
That's the corporate-account case. Use Vertex AI instead — see [prerequisites.md → Gemini CLI via Vertex AI](prerequisites.md#gemini-cli-via-vertex-ai-enterprise-path).

### Skills aren't loading
Check that skills have proper `SKILL.md` files and are in the right location (`~/.claude/skills` or `~/.gemini/skills`). In Gemini, try pointing it at the skill's `SKILL.md` path directly.

### Something broke
Check the logs in `~/ai-data/logs/` for errors.

---

Welcome to the culture. Time to start feeding it.
