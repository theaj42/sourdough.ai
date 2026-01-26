# Lesson 5: Understanding Context

You've learned to converse, read, create, and edit files. Now let's talk about something subtle but crucial: **context**.

## What You'll Learn

- How AI maintains context during conversations
- What context includes (and what it doesn't)
- How to help AI understand your situation better
- Why context matters for better assistance

## What is Context?

Context is everything I know about our current conversation:
- What we've discussed
- Files I've read
- Changes I've made
- Your goals and preferences
- The current task

Think of it like working memory.

## How Context Works

When you ask me something, I consider:

**Recent conversation**: What we just talked about
**Files read**: Content from files I've accessed
**Actions taken**: What I've done for you
**Your intent**: What you're trying to accomplish

This lets me give relevant, informed responses.

## Example: Context in Action

**You**: "Read the README file"
**I**: [reads ~/sourdough.ai/README.md]

**You**: "What's the sourdough metaphor?"
**I**: [I know you mean the README we just read, and I can answer from that context]

**You**: "Summarize it"
**I**: [I know "it" means the README—context tells me]

See? Context makes conversation natural.

## What Context Includes

In our current conversation, I have:
- **All messages**: Everything said so far
- **File contents**: Any files I've read
- **Code outputs**: Results from commands I ran
- **Your corrections**: When you tell me I'm wrong
- **Clarifications**: Additional details you provide

## What Context Doesn't Include

Important limitations:
- **Previous conversations**: I don't remember past sessions (unless logged)
- **Unread files**: I only know about files I've accessed
- **Your filesystem**: I don't automatically scan your system
- **Your thoughts**: I can't read your mind (be explicit!)
- **External changes**: If something changed outside our conversation, I don't know

## Building Context Together

You help me build context by:

**Being explicit**: "I'm working on a Python project"
**Pointing to resources**: "Read the project README"
**Providing background**: "This script was working yesterday but broke today"
**Sharing goals**: "I want to automate my backup process"

The more context you provide, the better I can help.

## Let's Practice

We're going to build context together. Try this:

1. "I'm working on a backup script"
2. "Read the getting-started.md file in the docs folder"
3. "Based on that file, what would be a good next step for learning?"

Notice how each statement builds on the previous ones? That's context.

---

## Context and File Paths

Once you tell me about a file, I remember it:

**You**: "Read ~/sourdough.ai/README.md"
**I**: [reads it]

**You**: "What does that file say about skills?"
**I**: [I know "that file" means the README—context!]

**You**: "Now read the skills README too"
**I**: [I infer you mean ~/sourdough.ai/skills/README.md]

## Context Across Tasks

Context carries across related tasks:

**Scenario**: "I want to create a Python script that processes CSV files"

**I know**:
- Language: Python
- Input: CSV files
- Task: Processing (I'll ask what kind)

Then when you say "add error handling", I know you mean the script we're discussing.

## When Context Gets Lost

Context can get confused if:
- **Too much time passes**: Long conversations drift
- **Topics change abruptly**: "Actually, forget that, let's talk about something else"
- **Pronouns become ambiguous**: "Can you edit that?" (which thing?)

**Solution**: Reset context by being explicit again.

## Refreshing Context

If I seem confused, refresh context:

**You**: "Let's start over. I'm trying to set up automated backups using a bash script."

This resets and clarifies what we're working on.

## Context and Session Logs

**Important for later**: Sourdough has session logging (we'll cover this in Lesson 10).

Session logs **preserve context across conversations**:
- What you worked on yesterday
- Decisions you made
- Files you created
- Next steps planned

When I read session logs, I get context from past sessions.

## Key Takeaways

- Context is everything I know about our current conversation
- Context includes messages, files read, and actions taken
- Context does NOT include previous sessions (unless logged)
- You build context by being explicit and providing information
- Good context = better assistance
- If context gets confused, just clarify

## Practical Tips

**Good**: "Read the config.yaml file, then update the database port"
- I know which file to edit

**Confusing**: "Update the port"
- Which file? Which port? What value?

**Good**: "I'm getting an error in my Python script. Read error.log and help me debug"
- Clear context about the problem

**Confusing**: "Something's broken, fix it"
- What's broken? Where? How?

## Context is Cumulative

As we work together, context builds:
- First conversation: I know nothing about your project
- After 10 minutes: I know your goals, files, structure
- After an hour: I understand your patterns and preferences
- After many sessions (with logging): I know your working style

This is why AI augmentation gets **better over time**.

## Questions?

Common questions:
- "How much can you remember?" (Everything in our current conversation, up to token limits)
- "Do you remember me from last time?" (Not unless we use session logging)
- "Can I see what context you have?" (Yes! Just ask "What do you know about my project?")

---

**Ready for Lesson 6?** Next, we'll learn about running commands—using bash or PowerShell through AI.

Say "next lesson" when ready.

---

**Progress**: Lesson 5 of 14 complete 🎉
