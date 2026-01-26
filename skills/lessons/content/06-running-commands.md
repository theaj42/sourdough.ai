# Lesson 6: Running Commands

You've learned conversation, files, and context. Now let's explore something powerful: **running system commands through AI**.

## What You'll Learn

- How AI can run terminal commands for you
- What this capability enables
- Safety considerations
- Practical command examples

---

## Part 1: Commands Through Conversation

Here's something cool: I can run terminal commands (bash on Mac/Linux, PowerShell on Windows) just by you asking me in plain English.

**What I can do**:
- List directory contents
- Check system information
- Install software
- Run scripts
- Interact with git
- Automate tasks

Think of it like this: instead of opening a terminal and typing commands yourself, you just tell me what you want to know, and I run the commands for you.

### Try This

Let's start simple. Ask me:

"What directory am I currently in?"

I'll run the `pwd` command (or equivalent) and show you the result.

**Go ahead—try it now.**

**[PAUSE - Wait for user to ask about current directory. Run the command, show the output, and explain what happened. Then continue.]**

---

Nice! See how that worked? You asked in natural language, I figured out which command to run, and you got the answer.

## Part 2: Understanding Command Execution

Here's what just happened behind the scenes:

1. **You asked** in plain English
2. **I understood** what information you needed
3. **I chose the right command** (`pwd` shows current directory)
4. **I executed it** using the Bash tool
5. **I showed you the result**

You didn't need to know the command syntax—you just asked naturally.

### Try This

Now let's try something more useful. Ask me:

"List the files in my sourdough.ai directory"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask about listing files. Run ls/dir command, show the output with file listing. Explain what you see (the different directories and files). Then continue.]**

---

Perfect! You can see all the files and folders: `skills/`, `engine/`, `README.md`, and so on.

## Part 3: Practical Command Examples

Let me show you some common things you can ask me to do:

**System Information**:
- "How much disk space do I have?"
- "What Python version is installed?"
- "Show me my system info"

**File Operations**:
- "Find all Python files in my projects directory"
- "Show me recently modified files"
- "Check if a file exists"

**Git Operations**:
- "What's the git status of this repo?"
- "Show me recent commits"
- "What branch am I on?"

The pattern is always the same: you ask naturally, I run the appropriate command, you get the results.

### Try This

Let's try checking your Python version. Ask me:

"Check if Python is installed and what version"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask about Python. Run python3 --version or python --version, show the output. If Python isn't installed, explain that and offer to help install it. Then continue.]**

---

Great! Now you can see what version you have (or whether you need to install it).

## Part 4: Understanding Safety

Here's something important: **I can run powerful commands, but I'm careful about safety**.

Before I run commands that could:
- Delete files
- Change system settings
- Modify permissions
- Install software system-wide

I'll:
- **Explain what the command does**
- **Warn you about risks**
- **Ask for confirmation** if needed
- **Show you what will happen** first

**Example**: If you ask me to "delete all temporary files," I won't just run `rm -rf` on something. I'll first show you what files would be deleted and ask you to confirm.

You're always in control.

### Command Output Format

When I run commands, you'll see the output just like in a terminal:

```bash
$ ls ~/sourdough.ai/
README.md
install.sh
engine/
skills/
docs/
learning/
```

If there's an error, you'll see that too, and we can troubleshoot together (that's what Lesson 7 is all about!).

## Part 5: Commands Build Context

Here's where it gets really powerful: **commands work with context**, just like everything else.

Watch this pattern:

**You**: "List files in sourdough.ai"
**I**: [run ls, show files]

**You**: "Read the README from that directory"
**I**: [I know you mean ~/sourdough.ai/README.md from context]

You don't have to repeat yourself—I remember what we're talking about.

### Try This

Let's practice combining commands and files:

1. "Show me what's in my home directory"
2. Wait for the list
3. Then ask me to "Show me more details about [pick a file you see]"

**Go ahead—try this two-step process.**

**[PAUSE - Wait for user to ask about home directory, show the listing. Then wait for them to ask about a specific file. Read or get info about that file. Explain how context carried over between the two requests. Then continue.]**

---

Nice work! See how you didn't have to spell out the full path the second time? I remembered what directory we were talking about.

## Part 6: Multi-Step Operations

I can also chain commands together to do complex things in one go.

**Example**: "Create a directory called test-project and initialize it as a git repo"

I'll run: `mkdir ~/test-project && cd ~/test-project && git init`

Multiple commands, one request. Complex operations made simple.

### Platform Differences (I Handle These)

**Mac/Linux**: I use bash commands (ls, grep, pwd, etc.)
**Windows**: I use PowerShell equivalents (Get-ChildItem, Select-String, etc.)

You don't need to worry about this—I automatically use the right commands for your system.

## Part 7: Real-World Scenario

Let me show you how this all comes together in a real situation.

**Imagine**: You have a Python script that's not working.

Here's how we'd solve it together:
1. **You**: "Run my script.py"
2. **I**: Run it, see an error, show you the error message
3. **You**: "What does that error mean?"
4. **I**: Explain the error in plain English
5. **You**: "Read script.py and fix the bug"
6. **I**: Read the file, identify the issue, fix it
7. **You**: "Run it again"
8. **I**: Run it, confirm it works!

See how commands + files + conversation = powerful collaboration?

---

## Wrap-Up: You've Got Command Powers

Great work! You now understand how to use AI to run system commands.

### Key Takeaways

✅ Ask for commands in natural language—no syntax memorization needed
✅ I handle the technical details (choosing commands, platform differences)
✅ Safety is built-in—I warn about risky operations
✅ Commands work with context (remember previous conversation)
✅ Combine commands + files + conversation for powerful workflows

### Common Questions

Before we finish, here are answers to questions new users often have:

**"Can you run GUI applications?"**
No, only command-line tools. But I can do most things through terminal commands.

**"What if a command fails?"**
I'll show you the error and help troubleshoot (that's what the next lesson is about!).

**"Can you run commands as sudo/admin?"**
Yes, but I'll explain what's happening and ask for confirmation first.

**"How do I know what commands you're running?"**
I'll always show you the command and its output—complete transparency.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 7?**
Next, we'll learn about collaborative troubleshooting—solving problems together when things don't work as expected.

**Need more practice first?**
That's totally fine! Try asking me to run a few more commands. Experiment with:
- Checking system information
- Finding files
- Git commands (if you have any repos)

Say "continue lessons" whenever you're ready for Lesson 7.

---

**Progress**: Lesson 6 of 14 complete 🎉

*Remember: Commands are just another way to have a conversation about your system!*
