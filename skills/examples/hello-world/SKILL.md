---
name: hello-world
description: Example skill demonstrating the skill structure. Use as a template for creating your own skills.
allowed-tools: ["Read", "Write", "Bash"]
---

# Hello World Skill

This is an example skill that demonstrates the structure and conventions for creating skills in sourdough.ai.

## Purpose

Show new users how skills are structured and provide a template for creating their own.

## When to Use

- When the user says "hello" or "test skill"
- When demonstrating skill invocation
- As a template for creating new skills

## Process

### 1. Greet the User

Respond with a friendly greeting that includes:
- Acknowledgment that this is an example skill
- Brief explanation of what skills can do

### 2. Show Skill Info

Display information about the skill structure:
- How this SKILL.md file is organized
- What the YAML frontmatter does
- How the process section works

### 3. Suggest Next Steps

Recommend:
- Looking at other skills in the `skills/` directory
- Creating a custom skill in their personal layer
- Reading the skills README

## Output Format

```markdown
# Hello from sourdough.ai!

This example skill was invoked successfully.

## What Just Happened

1. Claude Code found this skill in `skills/examples/hello-world/`
2. The SKILL.md file provided instructions
3. This output was generated following those instructions

## Create Your Own Skill

1. Create a directory: `~/ai-data/skills/my-skill/`
2. Add a `SKILL.md` file with:
   - YAML frontmatter (name, description, allowed-tools)
   - Purpose section
   - Process section with steps
   - Output format

## Resources

- Skills README: `skills/README.md`
- Fabric skills: `skills/fabric/` (real-world examples)
- Learning framework: `learning/README.md`
```

## Notes

- Skills are just markdown files with instructions
- Claude Code reads them and follows the process
- Your personal skills override framework skills with the same name
- Keep skills focused on one thing

## Example Frontmatter

```yaml
---
name: my-skill-name           # How users invoke it
description: Brief description # When to use this skill
allowed-tools: ["Read", "Write", "Bash", "WebFetch"]  # Tools the skill can use
---
```

## Skill Conventions

1. **Name**: Use kebab-case (`my-skill-name`)
2. **Description**: One sentence, starts with verb
3. **Purpose**: Why this skill exists
4. **Process**: Numbered steps, clear instructions
5. **Output**: What the user sees

---

**Philosophy**: Skills encode knowledge. Write them once, use them forever.
