# Lesson 9: Skills System

You've learned the fundamentals. Now let's explore one of sourdough's most powerful features: **the skills system**.

## What You'll Learn

- What skills are and why they're useful
- How to use existing skills
- How skills are structured
- How to create your own skills

---

## Part 1: What is a Skill?

A skill is a **packaged set of instructions** that teaches AI how to perform a specific task.

Think of it like:
- A recipe that I follow
- A template for repetitive tasks
- A way to encode knowledge once and reuse it many times

**The benefit**: Instead of explaining what you want every time, you just invoke the skill by name, and I know exactly what to do.

### Example: Without vs. With Skills

**Without skills**:
"Take these meeting notes, extract action items, identify participants, summarize key decisions, create a follow-up task list, and format everything nicely"

**With skills**:
"Use the meeting-summarizer skill on these notes"

Same result, way less explaining. Skills save time and ensure consistency.

### Try This

Let's see what skills are available. Ask me:

"What skills are available?" or "List skills"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask about skills. List the available skills from both ~/sourdough.ai/skills/ (framework skills) and ~/ai-data/skills/ (personal skills if they exist). Explain what you see: hello-world, fabric skills, etc. Then continue.]**

---

Nice! You can see sourdough includes several example skills to get you started.

## Part 2: Using a Skill

Let's try using one. Sourdough includes a simple example skill called "hello-world" that demonstrates how skills work.

### Try This

Ask me: "Run the hello-world skill"

Watch what happens. I'll read the skill instructions and follow them.

**Go ahead—try it now.**

**[PAUSE - Wait for user to invoke the hello-world skill. Execute the skill by reading the SKILL.md file and following its instructions. Show them what you're doing: "I'm reading the skill file, now I'm following the instructions..." Then continue.]**

---

Perfect! See what happened there?

## Part 3: How Skills Actually Work

Let me show you what just happened behind the scenes:

When you invoked that skill:
1. **I looked for the skill** in `~/sourdough.ai/skills/examples/hello-world/`
2. **I read the SKILL.md file** inside that directory
3. **The file contained instructions** for what to do
4. **I followed those instructions** step by step
5. **You got the result**

That's the whole pattern: **structured instructions that I can follow**.

### Anatomy of a Skill

Every skill has the same basic structure:

**A directory**: `skills/my-skill/`
**A SKILL.md file**: Instructions for me to follow
**Optional extras**: Templates, config files, scripts

The SKILL.md file contains:
- **Frontmatter** (name, description, tools allowed)
- **Purpose** (why this skill exists)
- **When to use** (trigger conditions)
- **Process** (step-by-step instructions)
- **Output format** (what the result looks like)

### Try This

Let's look at the structure of a real skill. Ask me:

"Read the hello-world SKILL.md file"

You'll see exactly how a skill is structured.

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Read the ~/sourdough.ai/skills/examples/hello-world/SKILL.md file and show its contents. Point out the key sections: frontmatter, purpose, process, output format. Explain how each section guides the AI's behavior. Then continue.]**

---

See that structure? That's the template for all skills.

## Part 4: Built-in Skills

Sourdough comes with several useful skills already:

**Example Skills**:
- **hello-world**: Learning example (what you just used)

**Fabric Skills** (integration with Daniel Miessler's Fabric patterns):
- **improve-prompt**: Enhance LLM prompts using best practices
- **extract-nuggets**: Pull key insights from content, filter hype
- **summarize-meeting**: Convert meeting notes to action items

These are real, useful skills you can use today.

### Try This

Let's try a real skill. Ask me:

"Use the improve-prompt skill to enhance this prompt: 'make the code better'"

You'll see how a skill transforms vague input into something useful.

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Execute the fabric-improve-prompt skill on their example prompt. Show the improved version and explain what the skill did: added specificity, structure, examples, etc. Then continue.]**

---

Cool, right? That skill knows how to apply prompt engineering best practices automatically.

## Part 5: Creating Your Own Skills

Here's where it gets powerful: **you can create custom skills for your repetitive tasks**.

The process is simple:
1. Create a directory: `~/ai-data/skills/my-skill/`
2. Create a `SKILL.md` file with instructions
3. Use it: "Run my-skill"

### Try This

Let's create a simple skill together. Think of something you do regularly that would be useful to automate.

Some ideas:
- "daily-standup" that generates your standup report
- "code-review-checklist" that checks code systematically
- "blog-post-outline" that creates content structure
- "project-status" that summarizes project state

Tell me: "Help me create a skill called [your-skill-name] that [what it does]"

**Go ahead—what skill would be useful for you?**

**[PAUSE - Wait for user to describe a skill they want to create. Work with them to: 1) Create the directory structure, 2) Write the SKILL.md file with appropriate frontmatter and instructions, 3) Save it, 4) Test it by running it. Be encouraging and explain what you're doing at each step. Then continue.]**

---

Excellent! You just created your first custom skill.

## Part 6: Skill Frontmatter

Let me explain the YAML frontmatter at the top of every SKILL.md file:

```yaml
---
name: my-skill-name
description: Brief description of what this does
allowed-tools: ["Read", "Write", "Bash", "WebFetch"]
---
```

**name**: How you invoke it ("run my-skill-name")
**description**: What it does (helps me know when to suggest it)
**allowed-tools**: What tools the skill can use (safety boundary)

The frontmatter tells me: who you are, what you do, and what you're allowed to use.

## Part 7: Personal vs. Framework Skills

There are two places skills can live:

**Framework skills** (`~/sourdough.ai/skills/`):
- Shared with everyone who uses sourdough
- Updated when you pull from git
- General-purpose

**Personal skills** (`~/ai-data/skills/`):
- Just for you
- Your custom workflows
- Your secrets and preferences
- Won't be overwritten by updates

**Pro tip**: If a personal skill has the same name as a framework skill, your personal version wins.

This means you can:
- Create completely new skills
- Customize existing skills for your needs
- Keep your customizations separate from framework updates

## Part 8: When to Create a Skill

Create a skill when you:
- **Do something repeatedly** (same process, different inputs)
- **Want consistent results** (ensure quality every time)
- **Need to share a workflow** (teach others your process)
- **Want to encode knowledge** (capture expertise)

**Good skill candidates**:
- Project setup workflows
- Code review checklists
- Report generation
- Data processing pipelines
- Documentation templates
- Daily/weekly routines

**Not good skill candidates**:
- One-off tasks
- Highly contextual operations
- Things you're still figuring out

Start with something you do at least weekly.

---

## Wrap-Up: Skills Unlock Efficiency

Great work! You now understand sourdough's skills system.

### Key Takeaways

✅ Skills package instructions for repetitive tasks
✅ Invoke skills by name instead of explaining every time
✅ Sourdough includes example skills to learn from
✅ Create personal skills for your workflows
✅ Skills are just markdown files with structured instructions
✅ Personal skills live in ~/ai-data/skills/
✅ Skills save time and ensure consistency

### Real-World Examples

People create skills for:
- **Daily standups**: Generate status reports
- **Code reviews**: Systematic checklist execution
- **Blog posts**: Content creation workflow
- **Data analysis**: Standardized processing
- **Infrastructure**: Deployment procedures

### Skill Best Practices

**Good skills**:
- Do one thing well
- Have clear, specific instructions
- Include examples
- Explain the output format

**Less effective skills**:
- Try to do everything
- Have vague instructions
- Require too much context

Start simple, refine over time.

### Common Questions

Before we finish, let me answer common questions:

**"How long should a skill be?"**
As long as needed, but simpler is usually better. Most skills are 50-150 lines.

**"Can skills use external scripts?"**
Yes! Skills can run bash/PowerShell scripts, use templates, reference files.

**"What if my skill doesn't work?"**
Test it, refine the instructions, iterate. Skills improve with use.

**"Can skills call other skills?"**
Yes! A skill can invoke other skills to create complex workflows.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 10?**
Next, we'll learn about session logging—tracking your work across conversations so context persists over time.

**Want to create more skills first?**
That's great! Practice makes perfect. Try creating 2-3 skills for things you do regularly.

Say "continue lessons" whenever you're ready for Lesson 10.

---

**Progress**: Lesson 9 of 14 complete 🎉

*Remember: Skills are how you teach the AI your workflows. The more you create, the more powerful the system becomes!*
