# sourdough.ai

A starter culture for your AI assistant.

---

## The Metaphor

Sourdough starter is a living thing. You feed it, it grows, it develops its own character. Share some with a friend and theirs will taste different from yours—same origins, different environment, unique result.

This framework works the same way:

- **The starter** (this repo): Core engine, base skills, patterns that work
- **Your culture** (your personal layer): Your workflows, your integrations, your CLAUDE.md
- **Feeding it**: The more you use it, the more it learns your preferences
- **Sharing**: Pass the starter to others; they grow their own

## What This Is

A framework for building a personalized AI assistant with [Claude Code](https://docs.anthropic.com/en/docs/claude-code). It provides:

- **Engine**: Core agents, integrations, and utilities
- **Skills**: Reusable capabilities (content creation, news curation, self-improvement)
- **Learning Framework**: Structure for your AI to learn and adapt to you
- **Patterns**: Workflows that actually work in practice

## What This Isn't

- A fork-and-customize model (that creates merge hell)
- A rigid system you have to fight against
- Something that works out of the box without investment

## Architecture

```
sourdough.ai/          ← The framework (this repo)
├── engine/            ← Core capabilities
├── skills/            ← Base skills
├── learning/          ← Learning framework
└── docs/              ← How it all works

~/ai-data/             ← Your personal layer (you create this)
├── skills/            ← Your custom skills
├── learning/          ← Your AI's learnings about you
├── logs/              ← Your session history
└── CLAUDE.md          ← Your instructions
```

The framework loads from both locations. Your personal layer overrides the framework. You `git pull` for updates without conflicts.

## Getting Started

```bash
# Clone the starter
git clone https://github.com/yourusername/sourdough.ai.git ~/sourdough.ai

# Run the install script
cd ~/sourdough.ai && ./install.sh

# Create your personal layer
mkdir -p ~/ai-data/{skills,learning,logs}

# Start a Claude Code session and begin feeding your culture
```

## Core Concepts

### Skills
Modular capabilities your AI can invoke. Base skills included; add your own in your personal layer.

### Learning Framework
Structure for capturing what works for you. User model, approach registry, failure post-mortems.

### Session Logging
Cross-session memory through structured logs. Your AI reads these to maintain context.

### Two-Layer Loading
Framework provides defaults. Your personal layer overrides. No merge conflicts, easy updates.

## Philosophy

1. **Build over plan** — Start using it, refine as you go
2. **Organic evolution** — Let it grow based on actual use
3. **Your AI, your way** — The framework serves you, not the reverse

## Status

Early development. The starter is viable but still maturing.

## License

MIT

---

*"Everyone's sourdough tastes a little different. That's the point."*
