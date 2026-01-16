# Getting Started

Get your sourdough starter culture up and running.

## Prerequisites

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed
- Python 3.10+
- Git

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

This creates:
- Python virtual environment
- Personal data directory (`~/ai-data/`)
- Starter CLAUDE.md

### 3. Configure Your Personal Layer

Edit `~/ai-data/CLAUDE.md` with:
- Context about yourself
- How you like to work
- Current focus areas

### 4. Start Using It

```bash
cd ~
claude
```

Claude Code will load your CLAUDE.md and you're ready to go.

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

### Claude doesn't see my CLAUDE.md
Make sure you're starting Claude Code from a directory that loads your CLAUDE.md, or configure it in Claude Code settings.

### Skills aren't loading
Check that skills have proper `SKILL.md` files and are in the right location.

### Something broke
Check the logs in `~/ai-data/logs/` for errors.

---

Welcome to the culture. Time to start feeding it.
