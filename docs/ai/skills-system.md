# Skills System (AI Documentation)

Complete reference for AI systems working with sourdough skills.

## What Skills Are

**Definition**: A skill is a structured markdown file (`SKILL.md`) containing instructions for AI to follow when performing a specific task.

**Purpose**:
- Encode reusable workflows
- Ensure consistency across invocations
- Share knowledge across users
- Reduce need for repeated explanations

## Skill Structure

### Directory Layout

```
skills/skill-name/
├── SKILL.md          # Required: Main instructions
├── templates/        # Optional: Templates or examples
├── config.yaml       # Optional: Skill configuration
├── scripts/          # Optional: Helper scripts
└── README.md         # Optional: Human documentation
```

**Only SKILL.md is required.** Everything else is optional.

### SKILL.md Format

```markdown
---
name: skill-name
description: Brief description (one sentence)
allowed-tools: ["Read", "Write", "Bash", "WebFetch", "Grep", "Glob"]
---

# Skill Title

Brief overview of what this skill does.

## Purpose

Why this skill exists. What problem it solves.

## When to Use

- Trigger phrase 1
- Trigger phrase 2
- Conditions that suggest this skill

## Process

### 1. First Step Name

Detailed instructions for first step.
Be specific about what tools to use.
Include examples if helpful.

### 2. Second Step Name

Next step instructions.

### 3. Final Step Name

Completion criteria.

## Output Format

Describe what the user should see when skill completes.

Use code blocks or examples:

\`\`\`markdown
Example output format here
\`\`\`

## Examples

### Example 1: Common Use Case

\`\`\`
User: "trigger phrase"
AI: [what AI does]
Result: [what user gets]
\`\`\`

## Notes

Additional context, edge cases, warnings, tips.

## Error Handling

What to do if something goes wrong.
```

### YAML Frontmatter

**Required fields**:
- `name`: Kebab-case skill name (how user invokes it)
- `description`: One-sentence description
- `allowed-tools`: Array of tool names

**Optional fields**:
- `version`: Skill version
- `author`: Skill creator
- `tags`: Array of tags for categorization
- `requires`: Array of dependencies

**Example**:
```yaml
---
name: code-review
description: Systematic code review for git changes
allowed-tools: ["Read", "Bash", "Grep"]
version: "1.0"
tags: ["development", "quality"]
---
```

## Skill Loading

### Discovery

AI systems should look for skills in:
1. **Personal skills**: `~/ai-data/skills/` (checked first)
2. **Framework skills**: `~/sourdough.ai/skills/` (fallback)

**Resolution**: Personal skills override framework skills with same name.

### Invocation

Users invoke skills by:
- **Direct**: "Use the code-review skill"
- **Implicit**: "Review my code" (if skill lists this trigger)
- **Shorthand**: "code-review" (name alone)

### Execution

When skill is invoked:
1. **Load SKILL.md**: Read the file completely
2. **Parse frontmatter**: Note allowed tools, description
3. **Follow Process section**: Execute steps in order
4. **Use specified format**: Match Output Format section
5. **Handle errors**: As described in skill

## Tool Restrictions

**`allowed-tools` field** specifies which tools the skill may use.

**Available tools**:
- `Read`: Read files
- `Write`: Create new files
- `Edit`: Modify existing files
- `Bash`: Execute shell commands (bash/zsh on Mac/Linux)
- `PowerShell`: Execute PowerShell commands (Windows)
- `Grep`: Search file contents
- `Glob`: Find files by pattern
- `WebFetch`: Fetch web content
- `WebSearch`: Search the web

**Enforcement**: AI should respect `allowed-tools` and not use tools outside this list for this skill.

**Why restrict**: Safety, clarity, predictability.

## Skill Conventions

### Naming

**Skill names** (frontmatter `name` field):
- Use kebab-case: `my-skill-name`
- Be descriptive: `code-review` not `cr`
- Prefix personal skills: `user-start`, `user-inbox`
- Framework skills: no prefix

**Directory names** must match skill name.

### Description

**One sentence**, starts with verb:
- ✅ "Systematic code review for git changes"
- ✅ "Generate meeting summaries from notes"
- ❌ "This skill does code review and stuff" (too informal, vague)

### Process Steps

**Numbered**, clear action verbs:
- "Read the file"
- "Search for pattern"
- "Generate output"

**Not vague**:
- ❌ "Do the thing"
- ❌ "Handle the data"

### Output Format

**Show, don't tell**:
```markdown
## Output Format

\`\`\`markdown
# Skill Result

## Section 1
Content here

## Section 2
More content
\`\`\`
```

## Skill Types

### Example Skills

**Purpose**: Teaching and templates
**Location**: `skills/examples/`
**Example**: `hello-world`

### Fabric Skills

**Purpose**: Integration with Fabric patterns
**Location**: `skills/fabric/`
**Pattern**: Each Fabric pattern becomes a skill
**Example**: `fabric-improve-prompt`, `fabric-extract-nuggets`

### Lesson Skills

**Purpose**: Interactive lessons for learning sourdough
**Location**: `skills/lessons/`
**Special**: Main skill + content files

### User Skills

**Purpose**: Personal workflows
**Location**: `~/ai-data/skills/` (personal layer)
**Convention**: Prefix with `user-`

### Team Skills

**Purpose**: Shared team workflows
**Location**: Configured in CLAUDE.md
**Convention**: Team-specific naming

## Creating Skills

### When to Create

Create a skill when:
- ✅ Task is performed repeatedly (3+ times)
- ✅ Workflow has clear steps
- ✅ Consistency matters
- ✅ Others might benefit

Don't create skills for:
- ❌ One-off tasks
- ❌ Highly variable workflows
- ❌ Simple single-step actions

### Development Process

1. **Identify need**: What's the repetitive task?
2. **Manual first**: Do it manually a few times
3. **Capture steps**: Write down the process
4. **Formalize**: Create SKILL.md structure
5. **Test**: Run it, refine instructions
6. **Document**: Add examples and notes
7. **Share**: (optional) Share with others

### Best Practices

**Good skills**:
- Single purpose (do one thing well)
- Clear instructions (anyone can follow)
- Error handling (what if things go wrong)
- Examples (show usage)
- Flexible (handle variations)

**Avoid**:
- Too broad (trying to do everything)
- Too rigid (breaks on slight variations)
- Undocumented (no examples or context)

## Skill Composition

**Skills can invoke other skills**:

```markdown
## Process

### 1. Get Code Changes
Use the `git-diff` skill to identify changed files.

### 2. Review Each File
For each file, use the `code-review` skill.

### 3. Summarize
Combine results into final report.
```

**Benefits**: Reusable components, maintainable workflows.

## Error Handling

Skills should specify what to do when errors occur:

```markdown
## Error Handling

### If file doesn't exist
- Inform user
- Ask for correct path
- Don't fail silently

### If git command fails
- Check if in git repository
- Verify git is installed
- Show error message

### If format is invalid
- Show example of valid format
- Offer to create template
```

## Progress Tracking (for multi-step skills)

For skills that take time or have multiple phases:

```markdown
### 2. Process Each File

For each file:
1. Read file
2. Analyze content
3. Generate output

Show progress: "Processing file 3 of 12..."
```

**User experience**: Users know what's happening, not lost in black box.

## Context and State

**Skills have access to**:
- Current conversation context
- Files mentioned in conversation
- Previous skill invocations in this session
- User's personal layer (via file access)

**Skills do NOT have**:
- Previous session state (unless via session logs)
- Other users' data
- External state (unless fetched explicitly)

## Security Considerations

**Skills should**:
- Respect `allowed-tools` restrictions
- Warn before destructive operations
- Not expose sensitive data in output
- Follow the responsibility model (user approves risky actions)

**Skills should NOT**:
- Execute arbitrary code without review
- Access files outside user's workspace
- Bypass safety checks

## Testing Skills

**How to test**:
1. Invoke skill manually
2. Check output format matches specification
3. Verify steps executed in order
4. Test error conditions
5. Validate with different inputs

**Common issues**:
- Instructions too vague → AI improvises incorrectly
- Output format not followed → Inconsistent results
- Missing error handling → Fails ungracefully

## Skill Documentation

**For users**: Create README.md in skill directory
**For AI**: The SKILL.md itself is the documentation
**For developers**: Add comments in Process section

## Versioning

**Optional but recommended** for shared skills:

```yaml
---
name: my-skill
version: "2.1.0"
---
```

**Semantic versioning**:
- Major: Breaking changes to interface
- Minor: New features, backward compatible
- Patch: Bug fixes

## Skill Dependencies

If skill requires other skills or resources:

```yaml
---
name: advanced-skill
requires:
  - base-skill
  - another-skill
resources:
  - "~/ai-data/templates/template.md"
---
```

**AI should verify dependencies exist before executing.**

## Special Skills

### Lesson Skill

**Location**: `skills/lessons/SKILL.md`
**Purpose**: Deliver interactive lessons
**Special behavior**:
- Reads lesson content from `skills/lessons/content/`
- Tracks progress in `~/ai-data/learning/lesson_progress.yaml`
- Supports navigation (next, previous, specific lesson)

### Fabric Integration Skills

**Pattern**: Each Fabric pattern wrapped as skill
**Structure**: SKILL.md invokes Fabric pattern
**Example**: `fabric-improve-prompt` calls `fabric --pattern improve_prompt`

## AI System Guidelines

**When executing skills**:
1. **Read completely**: Don't skip sections
2. **Follow precisely**: Don't improvise unless instructed
3. **Use specified tools**: Respect `allowed-tools`
4. **Match output format**: User expects consistency
5. **Handle errors gracefully**: As skill specifies

**When skill instructions conflict with general instructions**:
- Skill instructions take precedence (they're task-specific)
- General safety rules always apply

**When skill is ambiguous**:
- Ask user for clarification
- Don't guess
- Suggest improving skill documentation

## Summary

**Skills are**:
- Structured markdown instructions
- Reusable and shareable
- Tool-restricted and safe
- Self-documenting

**AI systems should**:
- Load from both personal and framework layers
- Follow instructions precisely
- Respect tool restrictions
- Handle errors gracefully
- Match specified output formats

**Skills enable**:
- Consistent execution
- Knowledge sharing
- Workflow automation
- Reduced cognitive load

---

**For detailed examples**: See `skills/examples/hello-world/SKILL.md` and `skills/fabric/` directory.
