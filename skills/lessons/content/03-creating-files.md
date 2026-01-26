# Lesson 3: Creating Files

You've learned to talk with AI and have AI read files. Now let's learn something powerful: **having AI write files for you**.

## What You'll Learn

- How to ask AI to create new files
- What kinds of files AI can write
- Best practices for file creation
- When to create vs. when to edit

## The Creative Power

Creating files with AI means:
- Write code without typing it all yourself
- Generate documentation from conversations
- Create configuration files with proper syntax
- Draft templates and starter files
- Save conversation results to files

This dramatically speeds up repetitive work.

## Let's Create a File

Right now, let's create a simple example file together.

**Try saying**: "Create a file called hello.txt in my home directory with the text 'Hello from sourdough.ai!'"

I'll use the Write tool to create it. Watch what happens.

---

## What Just Happened?

When you asked me to create that file:
1. I used the Write tool
2. Specified the full path: `~/hello.txt`
3. Wrote the content you requested
4. Confirmed creation

Now you have a real file! Check with: "Read the hello.txt file"

## Practical Examples

### Example 1: Creating a Script

**You**: "Create a bash script called backup.sh that copies my documents to a backup folder"

**I**: Write a proper bash script with:
- Shebang line (#!/bin/bash)
- Comments explaining what it does
- The actual backup commands
- Error handling

### Example 2: Configuration Files

**You**: "Create a .gitignore file for a Python project"

**I**: Write a .gitignore with:
- Python-specific patterns (\_\_pycache\_\_, *.pyc, etc.)
- Virtual environment folders
- Common IDE files
- Project-specific exclusions

### Example 3: Documentation

**You**: "Create a README for my project that explains what it does"

**I**: Write structured markdown with:
- Project title and description
- Installation instructions
- Usage examples
- Contributing guidelines

## You Can Specify Details

The more specific you are, the better the result:

**Vague**: "Make a config file"
**Better**: "Create a YAML config file with database settings and API endpoints"
**Best**: "Create config.yaml with PostgreSQL connection (host, port, database, user) and REST API endpoints for users and products"

## File Formats I Can Write

**Code**: Python, JavaScript, Bash, PowerShell, Java, Go, Rust, etc.
**Data**: JSON, YAML, CSV, XML, TOML
**Documents**: Markdown, HTML, plain text
**Config**: dotfiles, .ini files, .conf files
**Scripts**: Automation scripts, deployment scripts, test scripts

## Let's Practice

Try asking me to create a few files:

1. "Create a Python script called greet.py that prints 'Hello, World!'"
2. "Create a markdown file called notes.md with today's date as a header"
3. "Create a JSON file called settings.json with a few example settings"

Go ahead, pick one and try it!

---

## Important: Creating vs. Editing

**Create** means writing a **new** file. If the file already exists, I should **edit** it instead.

**Good practice**:
- Check if file exists first (ask me: "Does config.yaml exist?")
- If it exists, use editing (we'll learn that in the next lesson)
- If it doesn't exist, create it

**I'll usually warn you** if you ask me to create a file that already exists.

## Where Files Get Created

When you ask me to create a file, be specific about location:

**Absolute path**: `/Users/yourname/projects/myapp/README.md`
**Relative to home**: `~/sourdough.ai/my-file.txt`
**Current directory**: `./script.sh` (wherever Claude Code is running)

If you just say "create hello.txt", I'll ask where you want it.

## Safety Check

Before I create files, I'll:
- Confirm the path
- Check if file already exists
- Warn if location seems unusual
- Show you what I'm about to write (if it's complex)

You're always in control.

## Advanced: Creating Multiple Files

I can create several files at once:

**You**: "Set up a basic Python project structure with \_\_init\_\_.py, main.py, and README.md"

**I**: Create all three files with appropriate starter content.

This is incredibly powerful for project scaffolding.

## Key Takeaways

- AI can write any text-based file for you
- Be specific about content and location
- Creating is for new files; editing is for existing ones (next lesson!)
- You control what gets created and where
- This saves huge amounts of typing and formatting time

## Real-World Use Cases

People use file creation for:
- **Developers**: Scaffolding new projects, generating boilerplate code
- **Writers**: Creating document templates, drafting outlines
- **Ops/DevOps**: Writing deployment scripts, configuration files
- **Data folks**: Generating CSV templates, sample data files
- **Everyone**: Note-taking, task lists, documentation

## Questions?

Common questions:
- "Can you overwrite files?" (Only if you explicitly ask, and I'll warn you first)
- "What if I don't like what you created?" (Just ask me to delete it or create a different version)
- "Can you create binary files?" (No, only text-based files)

---

**Ready for Lesson 4?** Next, we'll learn about editing existing files safely—one of the most powerful features.

Say "next lesson" when ready.

---

**Progress**: Lesson 3 of 14 complete 🎉
