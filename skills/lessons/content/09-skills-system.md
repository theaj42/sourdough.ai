# Lesson 9: Skills System

You've learned the fundamentals. Now let's explore one of sourdough's most powerful features: **the skills system**.

## What You'll Learn

- What skills are and why they're useful
- How to use existing skills
- How skills are structured
- How to create your own skills

## What is a Skill?

A skill is a **packaged set of instructions** that teaches AI how to perform a specific task.

Think of it like:
- A recipe for the AI to follow
- A template for repetitive tasks
- A way to encode knowledge once and use it many times

## Why Skills Matter

**Without skills**: You explain what you want every time
**With skills**: You invoke the skill by name, AI knows what to do

Example:
- **Without**: "Take these meeting notes, extract action items, identify participants, summarize key decisions, and format it nicely"
- **With**: "Use the meeting-summarizer skill on these notes"

Skills save time and ensure consistency.

## Skills in Sourdough

Check what skills are available:

**Say**: "What skills are available?" or "List skills"

You'll see skills in:
- `~/sourdough.ai/skills/` (framework skills, shared with everyone)
- `~/ai-data/skills/` (your personal skills, just for you)

## Let's Use a Skill

Sourdough includes example skills. Let's try the hello-world skill:

**Say**: "Run the hello-world skill" or just "hello world"

Watch what happens—the skill provides structured instructions, and I follow them.

Try it now!

---

## What Just Happened?

When you invoked that skill:
1. I found the skill in `skills/examples/hello-world/`
2. I read the `SKILL.md` file inside it
3. The file contained instructions for what to do
4. I followed those instructions
5. You got the result

That's how skills work: structured instructions I can follow.

## Anatomy of a Skill

Every skill has:

**A directory**: `skills/my-skill/`
**A SKILL.md file**: Instructions for the AI
**Optional extras**: Templates, config files, scripts

The `SKILL.md` file contains:
- **Frontmatter**: Name, description, tools allowed
- **Purpose**: Why this skill exists
- **When to use**: Trigger conditions
- **Process**: Step-by-step instructions
- **Output format**: What the result looks like

## Example: Looking at a Real Skill

Let's examine an actual skill:

**Say**: "Read the hello-world skill file"

I'll read `~/sourdough.ai/skills/examples/hello-world/SKILL.md`

Look at the structure—see how it's organized? That's the template for all skills.

## Built-in Skills

Sourdough comes with several skills:

**hello-world**: Example skill for learning
**fabric-***: Integration with Daniel Miessler's Fabric patterns
- **improve-prompt**: Enhance LLM prompts
- **extract-nuggets**: Pull key insights from content
- **summarize-meeting**: Convert meeting notes to action items

Try one: "Use the improve-prompt skill to enhance this prompt: 'make the code better'"

## Creating Your Own Skill

You can create custom skills for your repetitive tasks.

**Process**:
1. Create a directory: `~/ai-data/skills/my-skill/`
2. Create `SKILL.md` with instructions
3. Use it: "Run my-skill"

Let's create a simple one together.

### Practice: Create a Custom Skill

**Say**: "Help me create a skill called 'daily-standup' that generates my standup report"

We'll:
1. Create the directory structure
2. Write the SKILL.md file with instructions
3. Test it
4. Refine it

Try this now—creating a skill for something you do regularly.

---

## Skill Frontmatter

Every SKILL.md starts with YAML frontmatter:

```yaml
---
name: my-skill-name
description: Brief description of what this does
allowed-tools: ["Read", "Write", "Bash", "WebFetch"]
---
```

**name**: How you invoke it
**description**: When to use it
**allowed-tools**: What tools the skill can use

## Skill Process Section

The process section tells me what to do:

```markdown
## Process

### 1. First Step
Do this thing

### 2. Second Step
Then do this

### 3. Final Step
Finish with this
```

Clear, numbered steps I can follow.

## Personal vs. Framework Skills

**Framework skills** (`~/sourdough.ai/skills/`):
- Shared with everyone
- Updated when you pull from git
- General-purpose

**Personal skills** (`~/ai-data/skills/`):
- Just for you
- Your custom workflows
- Your secrets and preferences
- Won't be overwritten by updates

**Pro tip**: Personal skills override framework skills with the same name.

## When to Create a Skill

Create a skill when you:
- Do something repeatedly
- Want consistent results
- Need to share a workflow
- Want to encode knowledge

**Good skill candidates**:
- Project setup workflows
- Code review checklists
- Report generation
- Data processing pipelines
- Documentation templates

## Skill Best Practices

**Good skills**:
- Do one thing well
- Have clear instructions
- Include examples in the SKILL.md
- Explain the output format
- Are easy to understand

**Less good skills**:
- Try to do everything
- Have vague instructions
- Require too much context
- Are overly complex

Start simple, refine over time.

## Skills and Context

Skills can reference:
- Files in your system
- Your personal data layer
- Templates or configs
- External resources

The skill instructions tell me how to find and use them.

## Advanced: Skills Can Call Skills

Skills can invoke other skills:

**Example**: A "weekly-report" skill might:
1. Run the "git-summary" skill for code changes
2. Run the "meeting-summary" skill for meeting notes
3. Combine into final report

This creates powerful workflows.

## Key Takeaways

- Skills package instructions for repetitive tasks
- Invoke skills by name instead of explaining every time
- Sourdough includes example skills to learn from
- Create personal skills for your workflows
- Skills are just markdown files with structured instructions
- Skills save time and ensure consistency

## Real-World Skill Examples

People create skills for:
- **Daily standups**: Generate status reports
- **Code reviews**: Systematic checklist execution
- **Blog posts**: Content creation workflow
- **Data analysis**: Standardized processing pipelines
- **Infrastructure**: Deployment and setup procedures

## Skills vs. Direct Instructions

**Use skills** when:
- Task is repetitive
- You want consistency
- Workflow is complex
- You'll do it again

**Use direct instructions** when:
- One-off task
- Highly contextual
- Still figuring out the process

Both are valid!

## Questions?

Common questions:
- "How long should a skill be?" (As long as needed, but simpler is better)
- "Can skills use external scripts?" (Yes! Skills can run bash/PowerShell scripts)
- "What if my skill doesn't work?" (Test it, refine instructions, iterate)

---

**Ready for Lesson 10?** Next, we'll learn about session logging—tracking your work across conversations.

Say "next lesson" when ready.

---

**Progress**: Lesson 9 of 14 complete 🎉
