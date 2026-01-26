# Lesson 3: Creating Files

You've learned to talk with AI and have AI read files. Now let's learn something powerful: **having AI write files for you**.

## What You'll Learn

- How to ask AI to create new files
- What kinds of files AI can write
- Best practices for file creation
- When to create vs. when to edit

---

## Part 1: The Creative Power

Creating files with AI means you can:
- Write code without typing it all yourself
- Generate documentation from conversations
- Create configuration files with proper syntax
- Draft templates and starter files
- Save conversation results to files

This dramatically speeds up repetitive work.

### Try This

Let's create a simple file together right now.

**Ask me**: "Create a file called hello.txt in my home directory with the text 'Hello from sourdough.ai!'"

I'll use the Write tool to create it.

**[PAUSE - Wait for user to ask me to create the file. Create it, confirm creation, then continue.]**

---

## Part 2: What Just Happened

Nice! When you asked me to create that file:
1. I used the Write tool
2. Specified the full path: `~/hello.txt`
3. Wrote the content you requested
4. Confirmed creation

Now you have a real file! Want to verify it exists?

### Try This

**Ask me**: "Read the hello.txt file"

This will show you that the file was actually created.

**[PAUSE - Wait for user to ask me to read the file. Read it, show them the content, then continue.]**

---

Perfect! You just saw the complete cycle: create a file, then read it back to verify. This is a pattern you'll use often.

## Part 3: Practical Examples

Now let me show you some real-world uses for file creation:

**Creating Scripts**:
"Create a bash script called backup.sh that copies my documents to a backup folder" → I'll write a proper script with comments, error handling, and the commands you need

**Configuration Files**:
"Create a .gitignore file for a Python project" → I'll write one with Python-specific patterns (\_\_pycache\_\_, *.pyc, venv, etc.)

**Documentation**:
"Create a README for my project that explains what it does" → I'll write structured markdown with sections for description, installation, usage, and more

### Being Specific Helps

The more specific you are, the better the result:

**Vague**: "Make a config file"
**Better**: "Create a YAML config file with database settings"
**Best**: "Create config.yaml with PostgreSQL connection (host, port, database, user) and REST API endpoints"

### Try This

Let's practice. Pick one of these to try:

1. "Create a Python script called greet.py that prints 'Hello, World!'"
2. "Create a markdown file called notes.md with today's date as a header"
3. "Create a JSON file called settings.json with a few example settings"

Go ahead, try one!

**[PAUSE - Wait for user to request file creation. Create the file they ask for, show them what I created, then continue.]**

---

## Part 4: Creating vs. Editing

Great! Now here's an important distinction:

**Create** means writing a **new** file. If the file already exists, you should **edit** it instead (we'll learn editing in the next lesson).

**Good practice**:
- Check if file exists first: "Does config.yaml exist?"
- If it exists, use editing (next lesson)
- If it doesn't exist, create it

**I'll usually warn you** if you ask me to create a file that already exists.

### File Types I Can Write

**Code**: Python, JavaScript, Bash, PowerShell, Java, Go, Rust, etc.
**Data**: JSON, YAML, CSV, XML, TOML
**Documents**: Markdown, HTML, plain text
**Config**: dotfiles, .ini files, .conf files
**Scripts**: Automation, deployment, testing scripts

### Where Files Get Created

When you ask me to create a file, be specific about location:

**Absolute path**: `/Users/yourname/projects/myapp/README.md`
**Relative to home**: `~/sourdough.ai/my-file.txt`
**Current directory**: `./script.sh`

If you just say "create hello.txt", I'll ask where you want it.

---

## Wrap-Up: You've Got This

Excellent work! You've learned how to have AI create files for you.

### Key Takeaways

✅ AI can write any text-based file for you
✅ Be specific about content and location for best results
✅ Creating is for new files; editing is for existing ones (next lesson!)
✅ You control what gets created and where
✅ This saves huge amounts of typing and formatting time
✅ Always verify by reading the file after creation

### Real-World Use Cases

People use file creation for:
- **Developers**: Scaffolding new projects, generating boilerplate code
- **Writers**: Creating document templates, drafting outlines
- **Ops/DevOps**: Writing deployment scripts, configuration files
- **Data folks**: Generating CSV templates, sample data files
- **Everyone**: Note-taking, task lists, documentation

### Questions?

Common questions:
- "Can you overwrite files?" (Only if you explicitly ask, and I'll warn you first)
- "What if I don't like what you created?" (Just ask me to delete it or create a different version)
- "Can you create binary files?" (No, only text-based files)

**Any other questions?** Now's a good time to ask!

---

## Next Steps

**Ready for Lesson 4?**
Next, we'll learn about editing existing files safely—one of the most powerful features. We'll build on what you learned about reading and creating.

**Want more practice first?**
Try creating a few more files to get comfortable. Say "continue lessons" whenever you're ready for Lesson 4.

---

**Progress**: Lesson 3 of 14 complete 🎉

*Remember: Create for new files, edit for existing ones. Next lesson covers editing!*
