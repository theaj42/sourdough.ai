# Lesson 4: Editing Files

You know how to create files. Now let's learn the most powerful skill: **safely editing existing files**.

## What You'll Learn

- How AI can modify existing files
- The "Read first, then Edit" rule
- Making precise changes without breaking things
- When to edit vs. when to recreate

## Why Editing Matters

Editing existing files is where AI really shines:
- Fix bugs in code without rewriting everything
- Update configuration files
- Add features to existing scripts
- Correct documentation
- Refactor safely

This is **much better** than recreating files from scratch.

## The Golden Rule

**ALWAYS read before editing.**

Here's why:
1. **I need to see** what's currently in the file
2. **I need to know** what to change
3. **I avoid breaking** things I can't see

If I try to edit without reading first, I might make wrong assumptions.

## How Editing Works

The Edit tool works by finding and replacing specific text:

**Step 1**: Read the file (so I know what's there)
**Step 2**: Find the exact text to change (the "old string")
**Step 3**: Replace it with new text (the "new string")
**Step 4**: Confirm the change

This is **precise and safe**.

## Let's Try It

Remember that hello.txt file we created? Let's edit it.

**Say**: "Read hello.txt then change the message to say 'Hello from Lesson 4!'"

Watch what I do:
1. Read the file first (following the golden rule)
2. Find the current text: "Hello from sourdough.ai!"
3. Replace with: "Hello from Lesson 4!"
4. Done!

Try it now.

---

## What Just Happened?

I made a **surgical change**:
- Only the specific text changed
- Everything else stayed the same
- No risk of corrupting the file
- Exact and predictable

This is why editing is powerful.

## Practical Examples

### Example 1: Fixing Code

**You**: "Read script.py and fix the typo on line 15"

**I**:
- Read the file
- Find line 15 with the typo
- Replace just that specific text
- Everything else untouched

### Example 2: Updating Config

**You**: "In config.yaml, change the port from 8080 to 3000"

**I**:
- Read config.yaml
- Find `port: 8080`
- Replace with `port: 3000`
- Other settings unchanged

### Example 3: Adding Features

**You**: "Add a new function to utils.py that formats dates"

**I**:
- Read utils.py to see what's there
- Find the right place to add the function
- Insert the new function code
- Preserve existing functions

## Being Specific Helps

The more specific you are, the better I can edit:

**Vague**: "Fix the script"
**Better**: "Fix the error in backup.sh"
**Best**: "In backup.sh, change the backup directory path to /backup/daily"

## Editing vs. Creating

**Edit** when:
- File already exists
- You want to change part of it
- You want to preserve the rest

**Create** when:
- File doesn't exist yet
- You're starting from scratch
- You want to replace everything (with a warning)

## Multiple Edits

I can make several changes in one go:

**You**: "In config.yaml, change the port to 3000 and the host to localhost"

**I**: Make both changes, one after the other.

Or you can ask for changes one at a time if you prefer.

## Let's Practice

Let's practice editing. Try these:

1. "Read hello.txt and add '- Updated in Lesson 4' on a new line"
2. "Change the greeting to be more enthusiastic"
3. Create a small script first, then ask me to modify it

Go ahead, try editing something!

---

## Safety Features

When editing, I:
- **Always read first** (you'll see me do this)
- **Show you what I'm changing** (before and after)
- **Make precise changes** (not wholesale replacements)
- **Warn about potential issues** (if the change seems risky)

## What If Something Goes Wrong?

If an edit doesn't work as expected:
1. **Ask me to revert**: "Change it back to what it was"
2. **Try again**: Give me more specific instructions
3. **Read the file**: See what actually happened
4. **Fix it together**: We'll figure it out

Don't worry—text files are easy to fix.

## Advanced: Find and Replace All

Sometimes you want to change **all occurrences** of something:

**You**: "In script.py, rename all instances of 'oldFunctionName' to 'newFunctionName'"

**I**: Use the Edit tool with `replace_all: true` flag to change every occurrence.

This is powerful for refactoring.

## Version Control Tip

If you're using git (we'll cover this later):
- Changes I make are just like changes you'd make by hand
- You can commit them, diff them, revert them
- Use `git diff` to see exactly what changed
- This makes editing even safer

## Key Takeaways

- Always read before editing (the golden rule)
- Editing is precise: change exactly what you want
- Editing is safer than recreating files from scratch
- Be specific about what to change
- You can always undo or fix edits
- This is one of AI's most powerful capabilities

## Real-World Use Cases

People use editing for:
- **Bug fixes**: Correct errors in code
- **Configuration updates**: Change settings without starting over
- **Refactoring**: Improve code structure safely
- **Documentation**: Keep docs up to date
- **Automation**: Update scripts as needs change

## Questions?

Common questions:
- "What if the edit breaks something?" (Read the file after to check, and we can fix it)
- "Can you edit binary files?" (No, only text files)
- "Can you edit really large files?" (Yes, though very large files might be truncated when I read them)

---

**Ready for Lesson 5?** Next, we'll explore how I understand and use context across our conversation.

Say "next lesson" when ready.

---

**Progress**: Lesson 4 of 14 complete 🎉
