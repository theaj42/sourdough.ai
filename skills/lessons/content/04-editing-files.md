# Lesson 4: Editing Files

You know how to create files. Now let's learn the most powerful skill: **safely editing existing files**.

## What You'll Learn

- How AI can modify existing files
- The "Read first, then Edit" rule
- Making precise changes without breaking things
- When to edit vs. when to recreate

---

## Part 1: Why Editing Matters

Editing existing files is where AI really shines:
- Fix bugs in code without rewriting everything
- Update configuration files
- Add features to existing scripts
- Correct documentation
- Refactor safely

This is **much better** than recreating files from scratch.

### The Golden Rule

**ALWAYS read before editing.**

Here's why:
1. **I need to see** what's currently in the file
2. **I need to know** what to change
3. **I avoid breaking** things I can't see

If I try to edit without reading first, I might make wrong assumptions.

---

## Part 2: Let's Try It

Remember that hello.txt file we created? Let's edit it.

### Try This

First, let me read it so I know what's there:

**Ask me**: "Read hello.txt"

**[PAUSE - Wait for user to ask me to read the file. Read it, show the current content, then continue.]**

---

Good! Now I know what's in the file. Let's change it.

### Try This

**Ask me**: "Change the message to say 'Hello from Lesson 4!'"

Watch what I do:
1. I'll find the current text: "Hello from sourdough.ai!"
2. Replace it with: "Hello from Lesson 4!"
3. Confirm the change

**[PAUSE - Wait for user to ask me to change the file. Make the edit, confirm the change, then continue.]**

---

## Part 3: What Just Happened

Perfect! I made a **surgical change**:
- Only the specific text changed
- Everything else stayed the same
- No risk of corrupting the file
- Exact and predictable

This is why editing is powerful.

### Verify the Change

Let's confirm it worked.

**Try This**: "Read hello.txt again"

You'll see the updated content!

**[PAUSE - Wait for user to ask me to read the file again. Read it, show the new content, then continue.]**

---

Nice! You just saw the complete editing cycle: read first, make precise change, verify it worked.

## Part 4: Practical Examples

Now let me show you some real-world uses for editing:

**Fixing Code**:
"Read script.py and fix the typo on line 15" → I'll read the file, find line 15 with the typo, replace just that specific text, everything else untouched

**Updating Config**:
"In config.yaml, change the port from 8080 to 3000" → I'll read config.yaml, find `port: 8080`, replace with `port: 3000`, other settings unchanged

**Adding Features**:
"Add a new function to utils.py that formats dates" → I'll read utils.py to see what's there, find the right place to add the function, insert the new code, preserve existing functions

### Being Specific Helps

The more specific you are, the better I can edit:

**Vague**: "Fix the script"
**Better**: "Fix the error in backup.sh"
**Best**: "In backup.sh, change the backup directory path to /backup/daily"

### Try This

Let's practice editing. Try one of these:

1. "Add a new line to hello.txt that says '- Updated in Lesson 4'"
2. "Change the greeting to be more enthusiastic"
3. Or edit one of the other files you created earlier

Go ahead, try editing something!

**[PAUSE - Wait for user to request an edit. Make the change they ask for, show them what changed, then continue.]**

---

## Part 5: Safety Features

Great! Now you've seen editing in action. Here's what keeps it safe:

When editing, I:
- **Always read first** (you saw me do this)
- **Show you what I'm changing** (before and after)
- **Make precise changes** (not wholesale replacements)
- **Warn about potential issues** (if the change seems risky)

### What If Something Goes Wrong?

If an edit doesn't work as expected:
1. **Ask me to revert**: "Change it back to what it was"
2. **Try again**: Give me more specific instructions
3. **Read the file**: See what actually happened
4. **Fix it together**: We'll figure it out

Don't worry—text files are easy to fix.

### Editing vs. Creating

**Edit** when:
- File already exists
- You want to change part of it
- You want to preserve the rest

**Create** when:
- File doesn't exist yet
- You're starting from scratch
- You want to replace everything (with a warning)

---

## Wrap-Up: You've Got This

Excellent work! You've learned how to have AI edit files safely.

### Key Takeaways

✅ Always read before editing (the golden rule)
✅ Editing is precise: change exactly what you want
✅ Editing is safer than recreating files from scratch
✅ Be specific about what to change
✅ You can always undo or fix edits
✅ This is one of AI's most powerful capabilities
✅ Verify changes by reading the file after editing

### Real-World Use Cases

People use editing for:
- **Bug fixes**: Correct errors in code
- **Configuration updates**: Change settings without starting over
- **Refactoring**: Improve code structure safely
- **Documentation**: Keep docs up to date
- **Automation**: Update scripts as needs change

### Questions?

Common questions:
- "What if the edit breaks something?" (Read the file after to check, and we can fix it)
- "Can you edit binary files?" (No, only text files)
- "Can you edit really large files?" (Yes, though very large files might be truncated when I read them)

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 5?**
Next, we'll explore how I understand and use context across our conversation. This is subtle but crucial for effective collaboration.

**Want more practice first?**
Try editing a few more files to get comfortable. The read→edit→verify cycle becomes natural with practice. Say "continue lessons" whenever you're ready for Lesson 5.

---

**Progress**: Lesson 4 of 14 complete 🎉

*Remember: Read first, edit precisely, verify after. This pattern keeps you safe!*
