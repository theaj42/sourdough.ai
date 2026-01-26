# Lesson 6: Running Commands

You've learned conversation, files, and context. Now let's explore something powerful and a bit more advanced: **running system commands through AI**.

## What You'll Learn

- How AI can run bash (Mac/Linux) or PowerShell (Windows) commands
- What this capability enables
- Safety considerations
- Practical examples of command usage

## What Does "Running Commands" Mean?

When I run commands, I can:
- List directory contents
- Check system information
- Install software
- Run scripts
- Check file permissions
- Interact with git
- Automate tasks

This is like having me type commands in your terminal for you.

## How It Works

**You ask**: "What Python version is installed?"
**I run**: `python3 --version`
**You get**: The output showing your Python version

I use the Bash tool (Mac/Linux) or PowerShell (Windows) to execute commands and return results.

## Let's Try Something Simple

**Say**: "List the files in my sourdough.ai directory"

I'll run: `ls ~/sourdough.ai/` (or equivalent for Windows)

You'll see the output showing all files and folders.

Try it now!

---

## What Just Happened?

I:
1. Understood you wanted to list files
2. Constructed the appropriate command
3. Ran it in your system shell
4. Returned the output to you

You got the information without opening a terminal yourself.

## Practical Examples

### Example 1: Checking Disk Space

**You**: "How much disk space do I have?"
**I run**: `df -h` (Mac/Linux) or `Get-PSDrive` (Windows)
**Result**: Disk usage information

### Example 2: Finding Files

**You**: "Find all Python files in my projects directory"
**I run**: `find ~/projects -name "*.py"` or equivalent
**Result**: List of Python files

### Example 3: Git Operations

**You**: "What's the status of my sourdough.ai git repo?"
**I run**: `cd ~/sourdough.ai && git status`
**Result**: Git status showing changes, branches, etc.

### Example 4: Installing Packages

**You**: "Install the requests library for Python"
**I run**: `pip install requests` (in the appropriate venv)
**Result**: Package installed

## Commands I Run Often

**File operations**: ls, cd, pwd, mkdir, cp, mv, rm
**Text processing**: grep, cat, head, tail
**System info**: df, du, ps, top
**Package management**: pip, npm, brew, apt
**Version control**: git status, git diff, git commit
**Network**: curl, wget, ping

## Safety and Commands

**Important**: I can run any command you ask me to, but I:
- **Warn about destructive operations** (like `rm -rf`)
- **Explain what a command does** if it's complex
- **Ask confirmation** for system-wide changes
- **Won't run malicious commands** even if asked

You're in control, and I'm here to help safely.

## Let's Practice

Try asking me to run a few commands:

1. "What directory am I currently in?"
2. "Show me the contents of my home directory"
3. "Check if Python is installed and what version"

Pick one and try it!

---

## Command Output

When I run commands, you see the output just like you would in a terminal:

```bash
$ ls ~/sourdough.ai/
README.md
install.sh
engine/
skills/
docs/
learning/
```

If there's an error, you'll see that too, and we can troubleshoot together.

## Combining with File Operations

Here's where it gets powerful:

**You**: "List my scripts directory, then read the backup.sh file"
**I**:
1. Run `ls ~/scripts/`
2. Read `~/scripts/backup.sh`
3. Report findings from both

## Commands and Context

Commands build context too:

**You**: "List files in sourdough.ai"
**I**: [runs ls, shows output]

**You**: "Read the README from that directory"
**I**: [knows you mean ~/sourdough.ai/README.md from context]

## Scripts and Automation

I can run scripts you've created:

**You**: "Run my backup script"
**I**: `bash ~/scripts/backup.sh` (after confirming location)

This is huge for automation.

## Multi-Step Commands

I can chain commands together:

**You**: "Create a directory called test-project and initialize it as a git repo"
**I run**: `mkdir ~/test-project && cd ~/test-project && git init`

Complex operations made simple.

## Platform Differences

**Mac/Linux**: I use bash commands (ls, grep, etc.)
**Windows**: I use PowerShell equivalents (Get-ChildItem, Select-String, etc.)

You don't have to worry about this—I handle platform differences automatically.

## When Commands Are Useful

**Developers**: Running tests, checking logs, git operations
**System admins**: Monitoring systems, checking configs, managing services
**Everyone**: Finding files, checking disk space, installing software

## Key Takeaways

- I can run system commands on your behalf
- This enables automation and system interaction
- Commands are safe—I warn about risky operations
- Combine commands with file operations for powerful workflows
- Platform differences handled automatically
- This bridges conversation and system action

## Advanced: Background Commands

Some commands take time (like long-running scripts). I can:
- Run them and wait for completion
- Show you progress if possible
- Handle errors gracefully

## Real-World Scenario

**Scenario**: You're debugging a Python script

**You**: "Run my script.py"
**I**: Run it, see an error
**You**: "What does that error mean?"
**I**: Explain the error
**You**: "Read script.py and fix the bug"
**I**: Read the file, identify the issue, fix it
**You**: "Run it again"
**I**: Run it, confirm it works

See how commands + files + conversation = powerful workflow?

## Questions?

Common questions:
- "Can you run GUI applications?" (No, only command-line tools)
- "What if a command fails?" (I'll show you the error and help troubleshoot)
- "Can you run commands as sudo/admin?" (I'll ask for confirmation first)

---

**Ready for Lesson 7?** Next, we'll learn about collaborative troubleshooting—solving problems together.

Say "next lesson" when ready.

---

**Progress**: Lesson 6 of 14 complete 🎉
