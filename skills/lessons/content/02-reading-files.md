# Lesson 2: Reading Files

Now that you know how to have a conversation with AI, let's explore one of the most powerful capabilities: **reading and understanding files**.

## What You'll Learn

- How AI can read any text file on your system
- Why this is incredibly useful
- How to point AI to files you want help with
- What AI can do once it reads a file

## The Power of Reading

When I can read files, I can:
- Explain what code does
- Summarize documentation
- Find specific information in logs
- Review configuration files
- Compare multiple files
- Debug issues by reading error messages

This is **much more powerful** than you might think.

## Let's Try It

I'm going to read a file right now. Watch what happens:

**You say**: "Read the README file in my sourdough.ai directory"

**I do this**:
1. Use the Read tool to open `~/sourdough.ai/README.md`
2. Process the entire file contents
3. Understand the structure and meaning
4. Respond based on what I found

Try it now: "Read the README file in ~/sourdough.ai/"

---

## What Just Happened?

When you asked me to read that file:
- I didn't just skim it—I read and understood **all of it**
- I can now answer questions about anything in that file
- I can reference specific parts
- I can explain concepts from it

Try asking me: "What's the sourdough metaphor about?" or "Explain the architecture described in that README"

## Reading Different File Types

I can read:
- **Text files**: .txt, .md, .log
- **Code**: .py, .js, .sh, .ps1, .java, etc.
- **Config files**: .yaml, .json, .toml, .env
- **Documentation**: README, CHANGELOG, etc.
- **Data files**: .csv, .xml, etc.

I can even read **images** and **PDFs** (I'll describe what I see or extract text).

## Practical Examples

### Example 1: Understanding Code

**You**: "Read the install.sh file and explain what it does"

**I**: Read the file, then explain: "This script sets up the sourdough framework by creating directories, setting up Python virtual environment, and creating starter configuration files..."

### Example 2: Finding Information

**You**: "Read my session log from today and tell me what I worked on"

**I**: Read `~/ai-data/logs/sessions/2026-01-26.md` and summarize your activities

### Example 3: Debugging

**You**: "Read the error log and help me figure out what went wrong"

**I**: Read the log, identify the error, explain what it means, and suggest fixes

## Try It Yourself

Let's practice. Try asking me to:

1. "Read the getting-started.md file in the docs directory"
2. "What does it say about installation?"
3. "Read the hello-world skill and explain how skills work"

Go ahead—try these or similar requests.

---

## How to Point Me to Files

You can specify files in several ways:

**Absolute path**: `/Users/yourname/sourdough.ai/README.md`
**Relative path**: `~/sourdough.ai/README.md` (~ means your home directory)
**Shorthand**: "the README in sourdough.ai" (I'll figure out the full path)

## Important: Permission & Context

**Good news**: I can only read files you tell me to read.

**That means**:
- I don't scan your entire system
- I only see what you point me to
- Your privacy is protected by default

**You're in control** of what I can access.

## Reading Multiple Files

I can read multiple files in one go:

**You**: "Read all the markdown files in the docs directory"
**I**: Will read docs/README.md, docs/getting-started.md, docs/resources.md, etc.

This is great for:
- Understanding a project
- Comparing configurations
- Reviewing related documents

## Key Takeaways

- I can read and understand any text-based file
- This lets me help with code, configs, docs, logs, and more
- You control what I read by telling me what files to access
- Reading files is the foundation for editing files (next lesson!)
- The more files I read, the more context I have to help you

## Questions?

Common questions at this point:
- "Can you read binary files?" (Sort of—I can describe them but can't execute them)
- "Is there a limit to file size?" (Very large files might be truncated, but I'll tell you)
- "Do you remember files after the conversation ends?" (Only if we log the session)

---

**Ready for Lesson 3?** Next, we'll learn about creating files—having AI write files for you.

Say "next lesson" or "continue lessons" when ready.

---

**Progress**: Lesson 2 of 14 complete 🎉
