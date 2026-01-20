# Skills

Reusable capabilities your AI assistant can invoke.

## What's a Skill?

A skill is a structured prompt that teaches Claude how to perform a specific task. Skills live in directories and contain a `SKILL.md` file with instructions.

## Structure

```
skills/
├── start/              # Session start - load context from previous sessions
├── update/             # Session update - save work for next time
├── examples/           # Example skills to learn from
└── fabric/             # Fabric pattern integrations
```

## Core Skills

These two skills implement the memory system - use them regularly:

| Skill | Invocation | Purpose |
|-------|------------|---------|
| **start** | `/start` | Load context from recent sessions at the beginning of work |
| **update** | `/update` | Save what you worked on at the end of a session |

The memory loop: `/start` → work → `/update` → next session → `/start` → ...

## Creating a Skill

1. Create a directory: `skills/my-skill/`
2. Add a `SKILL.md` file with instructions
3. Optionally add supporting files (templates, configs)

Example `SKILL.md`:

```markdown
# My Skill

Brief description of what this skill does.

## When to Use

- Trigger conditions
- User phrases that invoke this

## Process

1. Step one
2. Step two
3. Step three

## Output

What the skill produces.
```

## Personal Skills

Put your custom skills in your personal data directory (`~/ai-data/skills/`).
They'll be loaded alongside framework skills, and your versions override framework defaults.

## Naming Convention

- Framework skills: descriptive names (`content-creation`, `news-curator`)
- Personal skills: `user-` prefix (`user-start`, `user-inbox`)

This keeps it clear what's shared vs. personal.
