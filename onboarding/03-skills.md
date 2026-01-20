# Onboarding Conversation 3: Skills

## Purpose
Introduce skills as reusable workflows. The goal is to:
- Explain what skills are and why they matter
- Show the built-in skills (`/start`, `/update`)
- Walk through using a skill
- Plant the seed for creating custom skills

## Conversation Guide

### Opening

Connect back to the previous conversation:

> "You've got session logging working - the system now remembers what we do together. Now I want to show you something that makes common tasks even easier: **skills**.
>
> Think of skills as recipes. Instead of explaining what you want every time, you just say 'make this' and I follow the recipe."

### What Skills Are

Keep it simple and concrete:

> "A skill is just a markdown file that tells me how to do something. When you invoke a skill, I read the instructions and follow them.
>
> For example, Sourdough comes with two built-in skills:
>
> - `/start` - Loads your session context (reads recent logs, checks what you were working on)
> - `/update` - Saves your session work (updates today's log, captures any learnings)
>
> These form a loop:
> ```
> /start → work together → /update → next session → /start → ...
> ```
>
> That loop is how the system builds memory over time."

### Demo: Using /start

Walk them through it:

> "Let's try `/start` right now.
>
> Just type `/start` or say 'run the start skill' - I'll load your context and show you what I find.
>
> [Execute the /start skill]
>
> See what happened? I read your session logs, checked for any pending work, and now I have context for our conversation. You didn't have to explain anything - the skill handled it."

### Demo: Using /update

Show the other half of the loop:

> "At the end of a work session, you'd use `/update`. It:
> - Adds what we accomplished to today's session log
> - Captures any observations about how you work
> - Notes any TODOs or next steps
>
> You don't need to run it now - we'll do that naturally when we finish today. But now you know the pattern."

### Where Skills Live

Explain the structure:

> "Skills live in two places:
>
> **Framework skills** (`~/sourdough.ai/skills/`) - Built-in skills that come with Sourdough
> **Your skills** (`~/ai-data/skills/`) - Custom skills you create
>
> Each skill is a folder with a `SKILL.md` file inside. That file contains:
> - A description of what the skill does
> - Step-by-step instructions for me to follow
> - Any parameters or options
>
> You can look at the built-in skills to see how they're structured."

### The Power of Custom Skills

Plant the seed:

> "The real power comes when you create your own skills.
>
> Think about tasks you do repeatedly:
> - Starting a new project with a specific structure
> - Running a code review with your preferred checklist
> - Generating a weekly report in a certain format
> - Deploying to a staging environment
>
> Any workflow you find yourself explaining to me more than once could become a skill.
>
> **You don't need to write the skill yourself.** Just tell me what you want, and I'll create the skill file for you. Next time, you just invoke it."

### Quick Example

Make it concrete:

> "Here's a simple example. Let's say you often start your day by:
> 1. Checking your calendar
> 2. Reviewing yesterday's session log
> 3. Looking at your task list
>
> We could create a `/morning` skill that does all three with one command.
>
> Want to try creating a simple skill together? Think of something you do repeatedly - even something small - and tell me about it."

If they share something:
- Acknowledge the use case
- Explain how it would work as a skill
- Offer to create it (or save for a later session)

If they don't have ideas yet:
- That's fine - ideas will come as we work together
- Mention that you'll suggest skills when you notice patterns

### Agent Compatibility

Briefly mention cross-platform support:

> "One nice thing about skills: they work across different AI assistants. The same skill file can be used with Claude Code, Gemini CLI, or other agentic tools.
>
> The format is simple markdown with a bit of YAML metadata. You're not locked into any specific tool."

### Closing

Wrap up and set expectations:

> "To recap:
>
> - **Skills are reusable workflows** defined in markdown files
> - **`/start` and `/update`** are your daily loop for session memory
> - **Custom skills** can automate anything you do repeatedly
> - **Just ask** when you want to create a new skill
>
> From now on, I'll suggest creating skills when I notice you doing the same thing multiple times.
>
> Next conversation, we'll talk about how the **learning framework** captures patterns about you - so I get better at helping you over time.
>
> Any questions about skills? Or want to try creating one now?"

---

## Notes for the AI

- Actually run `/start` during this conversation to make it real
- If they want to create a skill, do it - don't defer unnecessarily
- Keep skill examples relevant to their stated goals (from conversation 1)
- The `/morning` example is just an example - adjust based on their context
- If they're a developer, mention code-focused skill examples
- If they're non-technical, keep examples task/workflow focused
- Capture any skill ideas they mention for future reference
