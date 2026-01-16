# Skills

Reusable capabilities your AI assistant can invoke.

## What's a Skill?

A skill is a structured prompt that teaches Claude how to perform a specific task. Skills live in directories and contain a `SKILL.md` file with instructions.

## Structure

```
skills/
├── examples/           # Example skills to learn from
├── fabric/             # Fabric pattern integrations
├── content-creation/   # Blog post, video production workflows
├── news-curator/       # News fetching and scoring
└── self-improving-ai/  # System self-improvement patterns
```

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
