# Sourdough Training: Beginner (Dexcom)

**Target Audience**: Dexcom employees new to AI-assisted work
**Duration**: 30-45 minutes
**Prerequisites**: None
**Outcome**: Understand what sourdough is and complete basic interactions

---

## Introduction

### What is Sourdough?

Sourdough is a framework for working with AI assistants (like Claude Code) that:
- Helps AI understand your preferences
- Maintains context across conversations
- Provides reusable workflows (skills)
- Keeps your work organized

**Think of it as**: Your personal operating system for AI collaboration.

### Why Should I Care?

**Benefits**:
- **Productivity**: Automate repetitive tasks, get help with code
- **Learning**: Understand complex systems faster with AI assistance
- **Quality**: AI can review your work and catch issues
- **Documentation**: Automatically track what you accomplish

**Real examples at Dexcom**:
- Writing Jira tickets faster
- Debugging code collaboratively
- Generating documentation from code
- Automating common operations tasks

### The Sourdough Metaphor

Just like sourdough starter:
- Everyone starts with the same base framework
- Your "culture" develops its own character
- It learns your preferences over time
- You can share it with colleagues

**Your sourdough will be different from your teammate's sourdough.** That's the point.

---

## Getting Started

### Prerequisites

You'll need:
- **Claude Code** installed (or Gemini CLI)
- **Python 3.10+**
- **Git**
- **15 minutes** to complete setup

### Installation

1. **Clone the repository**:
```bash
git clone https://github.com/yourusername/sourdough.ai.git ~/sourdough.ai
```

2. **Run the installer**:
```bash
cd ~/sourdough.ai
./install.sh
```

This creates:
- Python virtual environment
- Personal data directory at `~/ai-data/`
- Starter configuration file (`CLAUDE.md`)

3. **Configure your preferences**:
Edit `~/ai-data/CLAUDE.md` with information about yourself and how you like to work.

---

## Your First Conversation

### Starting a Session

```bash
cd ~
claude
```

This starts Claude Code with your sourdough configuration loaded.

### Try These Commands

1. **Basic conversation**:
```
You: "What is sourdough and what can you help me with?"
```

2. **File operations**:
```
You: "List the files in my sourdough.ai directory"
You: "Read the README file and summarize it"
```

3. **Getting help**:
```
You: "What skills are available?"
You: "Start lessons"  (launches interactive lesson system)
```

### What Just Happened?

- You had a natural conversation with AI
- AI executed commands on your behalf
- AI read and understood files
- All without special syntax or memorizing commands

**This is the foundation of AI augmentation.**

---

## Core Concepts

### 1. Conversation is the Interface

No special commands. Just ask for what you need:
- "Help me debug this Python error"
- "Create a Jira ticket template"
- "Explain what this code does"

### 2. AI Can Read and Write Files

**Reading**:
- "Read config.yaml and explain the database settings"
- "What does the error log say?"

**Writing**:
- "Create a Python script that processes CSV files"
- "Update the README with installation instructions"

**Editing**:
- "Fix the typo on line 23"
- "Add error handling to the backup function"

### 3. AI Maintains Context

Within a conversation, AI remembers:
- Files you've discussed
- Code you're working on
- Your current goal
- Previous exchanges

**Example**:
```
You: "Read script.py"
AI: [reads file]
You: "What does the backup function do?"
AI: [explains the function from the file just read]
You: "Add logging to that function"
AI: [edits the file, adding logging]
```

### 4. Skills are Reusable Workflows

Instead of explaining the same thing repeatedly, create a skill:

**Without skills**:
Every time: "Take these notes, extract action items, identify owners, add to my task list..."

**With skills**:
Once: Create "meeting-notes" skill
Forever: "Use meeting-notes skill on these notes"

### 5. Session Logs Maintain Memory

AI doesn't remember past conversations by default.

**Solution**: Session logging

At the end of work, update today's log:
- What you accomplished
- Decisions made
- Next steps

Next session, AI reads the log and knows where you left off.

---

## Practical Exercise

Let's work through a real scenario.

### Scenario: Automate a Common Task

**Goal**: Create a script that backs up your important files.

**Steps**:

1. **Start the conversation**:
```
You: "I want to create a backup script for my Documents folder"
```

2. **AI will ask clarifying questions**:
- Where should backups go?
- How often will this run?
- What format? (zip, tar, rsync?)

3. **Provide answers**:
```
You: "Back up to ~/Backups/ as a dated zip file"
```

4. **AI creates the script**:
AI will write a bash script (or PowerShell for Windows) that does this.

5. **Review and test**:
```
You: "Show me what the script does"
You: "Run it in test mode first"
```

6. **Refine**:
```
You: "Add error handling if Documents folder doesn't exist"
You: "Add logging so I can see what was backed up"
```

7. **Document**:
```
You: "Create a README explaining how to use this script"
```

### What You Learned

In 10 minutes, you:
- Described what you wanted in plain English
- Got working code
- Refined it iteratively
- Added production features
- Documented it

**This is AI augmentation in practice.**

---

## Safety and Responsibility

### Important: You're in Charge

When you give AI access to files and commands, **you are responsible** for:
- Reviewing what AI suggests
- Understanding the implications
- Having backups of important data
- Saying "no" if something seems wrong

### Best Practices

**Always**:
- ✅ Use version control (git) for code
- ✅ Review changes before accepting
- ✅ Test in development first
- ✅ Back up important data
- ✅ Ask "what does this do?" if unsure

**Never**:
- ❌ Blindly accept suggestions for production systems
- ❌ Give AI access to sensitive credentials
- ❌ Run commands you don't understand
- ❌ Skip testing

### Dexcom-Specific Considerations

**OK to use sourdough for**:
- Personal productivity
- Learning and experimentation
- Development work
- Documentation
- Automation scripts

**Check with your manager before**:
- Automating production systems
- Processing patient data
- Modifying shared infrastructure
- Deploying to production

**Never use AI for**:
- Anything involving PHI (Protected Health Information)
- Production database queries
- Security-sensitive operations (without approval)

---

## Next Steps

### Complete the Interactive Lessons

Sourdough includes 14 built-in lessons:

```
You: "Start lessons"
```

These cover:
- File operations in detail
- Running commands
- Troubleshooting
- Skills system
- Session logging
- Best practices

**Recommended**: Complete lessons 1-8 (about 2 hours total).

### Customize Your Configuration

Edit `~/ai-data/CLAUDE.md` to include:
- Information about yourself
- Your role at Dexcom
- Projects you work on
- Your preferences for working with AI

The more context AI has, the better it can help.

### Try It on Real Work

Apply sourdough to something you're actually working on:
- Debug a tricky issue
- Write a script to automate something annoying
- Document a system you maintain
- Research a technology you're learning

**Real work = real learning.**

### Join the Community (Internal)

Connect with other Dexcom employees using sourdough:
- Share skills you create
- Ask questions
- Exchange tips
- Build on each other's work

---

## Common Questions

### "Is this secure?"

Yes, when used properly:
- Everything runs locally on your machine
- AI doesn't automatically access files
- You control what AI can see
- No data sent to external services (except AI API calls)

**Follow Dexcom security policies** as always.

### "Do I need to be technical?"

No! Sourdough is designed for:
- Developers (write code faster)
- IT/Ops (automate tasks)
- Security (analyze logs, scan systems)
- Project managers (organize work, track progress)
- Anyone who works with computers

**If you can have a conversation, you can use sourdough.**

### "How much time does this save?"

Users report:
- 20-30% productivity improvement on routine tasks
- 50%+ faster on documentation
- Significantly faster debugging
- Much easier context switching

**YMMV, but most people find substantial value quickly.**

### "What if AI makes a mistake?"

AI isn't perfect. That's why you:
- Review changes before accepting
- Use version control (easy to undo)
- Test before deploying
- Stay engaged in the process

**AI augments your judgment, doesn't replace it.**

### "Can I use this for Dexcom projects?"

Yes, with appropriate precautions:
- Follow security policies
- Don't process PHI
- Review code before committing
- Test thoroughly
- Use good engineering practices

**Same standards as if you wrote the code yourself.**

---

## Resources

### Sourdough Documentation

- **Getting Started**: `~/sourdough.ai/docs/getting-started.md`
- **Session Logging**: `~/sourdough.ai/docs/session-logging.md`
- **Skills Guide**: `~/sourdough.ai/skills/README.md`

### Interactive Learning

- **Built-in lessons**: Say "start lessons" in any Claude Code session
- **Example skills**: Check `~/sourdough.ai/skills/examples/`

### External Learning

- **Claude Code docs**: https://docs.anthropic.com/en/docs/claude-code
- **Git tutorial**: https://git-scm.com/book/en/v2
- **Python basics** (if needed): https://python.org

### Getting Help

- Ask AI: Seriously, just ask Claude to explain things
- Internal Dexcom sourdough community (if established)
- Review lessons again
- Check documentation

---

## Summary

**You learned**:
- What sourdough is and why it's useful
- How to install and configure it
- How to have conversations with AI
- Core concepts (files, context, skills, logging)
- Safety and responsibility
- How to get started with real work

**Next actions**:
1. Install sourdough (15 minutes)
2. Complete your first conversation (5 minutes)
3. Start interactive lessons (2 hours for lessons 1-8)
4. Try on real work (ongoing)

**Remember**: This is AI *augmentation*, not replacement. You're in charge, AI helps you be more effective.

---

**Questions?** Ask your AI assistant! Say: "I completed the beginner training, what should I do next?"

Welcome to AI augmentation. Welcome to sourdough.

---

*For Dexcom Internal Use*
*Version 1.0 - January 2026*
