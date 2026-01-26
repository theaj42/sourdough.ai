# Lesson 7: Troubleshooting Together

You know how to work with files and run commands. Now let's talk about one of AI's most valuable capabilities: **collaborative troubleshooting**.

## What You'll Learn

- How to troubleshoot problems with AI help
- The troubleshooting workflow
- Common problem patterns
- When to ask for help vs. when to dig deeper

---

## Part 1: Why AI is Good at Troubleshooting

Here's the thing: **troubleshooting is detective work**, and AI can be your partner in the investigation.

**I bring**:
- Systematic investigation (check logs, run diagnostics)
- Pattern matching (seen similar errors before)
- Rapid iteration (try fixes quickly)
- Memory (remember what we've tried)
- Research ability (search for solutions)

**You bring**:
- Context (what you were trying to do)
- Domain knowledge (how your system works)
- Judgment (is this the right direction?)
- Goals (what "fixed" means for you)

Together, we solve problems faster than either of us alone.

### Try This

Let's create a problem and solve it together. This will show you the whole troubleshooting workflow.

Ask me: "Create a Python file called test.py with a syntax error on purpose"

I'll create a file with a deliberate bug.

**Go ahead—try it now.**

**[PAUSE - Wait for user to ask. Create a simple Python file with an obvious syntax error (like missing quotes or parentheses). Show them the file path and contents. Then continue.]**

---

Good! I've created a file with a syntax error. Now let's troubleshoot it together.

## Part 2: The Troubleshooting Workflow

Here's the systematic approach we'll use:

1. **Try to run it** (reproduce the problem)
2. **Read the error** (what's it telling us?)
3. **Form a hypothesis** (what might be wrong?)
4. **Test the fix** (try a solution)
5. **Verify** (did it work?)

Let's walk through these steps.

### Try This

Now ask me: "Run test.py and help me fix any errors"

I'll run it, see the error, and we'll fix it together.

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Run the Python file, show the error message. Explain what the error means in plain English. Then read the file, identify the specific issue, fix it, and run it again to confirm it works. Walk them through each step of the process. Then continue.]**

---

Perfect! See how that worked? We:
1. ✅ Ran the file and saw the error
2. ✅ Read the error message carefully
3. ✅ Identified the problem (missing quote, parenthesis, etc.)
4. ✅ Fixed the specific issue
5. ✅ Ran it again to verify it works

That's the troubleshooting workflow in action.

## Part 3: Common Problem Patterns

Most problems fall into patterns. Let me show you the most common ones:

### Pattern 1: Path Issues
**Symptoms**: "File not found", "No such file or directory"
**Usually caused by**: Wrong path, typo, file doesn't exist
**How we solve it**: Check if file exists, verify the path with `ls`

### Pattern 2: Permission Problems
**Symptoms**: "Permission denied"
**Usually caused by**: File isn't executable, wrong ownership
**How we solve it**: Check permissions with `ls -l`, fix with `chmod`

### Pattern 3: Missing Dependencies
**Symptoms**: "ModuleNotFoundError", "command not found"
**Usually caused by**: Package not installed, wrong environment
**How we solve it**: Check what's installed, install missing packages

### Pattern 4: Syntax Errors
**Symptoms**: "SyntaxError", "unexpected token"
**Usually caused by**: Typos, missing punctuation, wrong indentation
**How we solve it**: Read the code carefully, look at the line number

### Pattern 5: Configuration Issues
**Symptoms**: App won't start, wrong behavior
**Usually caused by**: Incorrect config values, wrong format
**How we solve it**: Read config file, verify syntax and values

### Try This

Now that you know these patterns, let's practice with a real scenario.

Think of something on your system that isn't working, or ask me to create another test problem. Then we'll troubleshoot it together using the workflow.

Try something like:
- "Check if git is installed and working"
- "Create a config file with an error and help me fix it"
- Or describe a real problem you're having

**Go ahead—what do you want to troubleshoot?**

**[PAUSE - Wait for user to describe a problem or ask to create one. Work through the troubleshooting process together: gather information, diagnose, fix, verify. Be encouraging and explain your thinking at each step. Then continue.]**

---

Excellent work! You just went through the complete troubleshooting cycle.

## Part 4: What Information Helps

When something's broken, here's what helps me help you:

**Tell me**:
- **What you're trying to do**: "I want to run this backup script"
- **What's happening instead**: "I get an error message"
- **The exact error**: Copy and paste the full error text
- **What you've tried**: "I already checked the file exists"

**Example of helpful detail**:
"I'm trying to run backup.sh in my scripts folder. When I run it, I get 'Permission denied'. I can see the file exists with ls."

That gives me everything I need to help quickly.

**Example of less helpful**:
"Something's broken. Fix it."

I'll need to ask a lot of questions to figure out where to start.

### The More Specific, The Faster We Solve It

**Vague**: "My Python script doesn't work"
**Better**: "My Python script gives an import error"
**Best**: "My script.py gives 'ModuleNotFoundError: No module named requests'"

The specific error message is gold—it tells us exactly what's wrong.

## Part 5: When I Get Stuck

Sometimes I'll need your help:
- "Do you have admin privileges?"
- "What version of [software] are you running?"
- "Can you try running this command?"

Troubleshooting is **collaborative**. We figure it out together.

### Iterate Until It Works

If the first fix doesn't work:
- I remember what we tried
- I form a new hypothesis
- We try the next solution
- We keep going until it works

**You don't have to solve it alone.** That's the whole point.

---

## Wrap-Up: You're a Troubleshooter Now

Great work! You now know how to troubleshoot problems collaboratively with AI.

### Key Takeaways

✅ Troubleshooting is detective work—we investigate together
✅ Follow the workflow: reproduce → diagnose → fix → verify
✅ Most problems follow common patterns
✅ Exact error messages are incredibly helpful
✅ If first fix doesn't work, we iterate
✅ Troubleshooting is collaborative—ask questions, try things

### Real-World Applications

**Developers**: Debug code, fix build errors, solve dependency issues
**Operations**: Fix service failures, diagnose config problems, analyze logs
**Everyone**: Software not working, installation problems, "something broke"

### Common Questions

Before we finish, let me answer common questions:

**"What if you can't figure it out?"**
We can search the web for solutions, consult documentation, or break the problem down differently. Persistent problems usually have solutions online.

**"How do you know what to try?"**
Pattern matching from common problems, reading error messages carefully, and systematic investigation.

**"Can you fix hardware problems?"**
No, only software issues. But I can help diagnose whether something is hardware or software.

**"What's the hardest type of problem to fix?"**
Problems without error messages or clear symptoms. That's when we need to add logging and test systematically.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 8?**
Next is an important lesson: understanding risk and responsibility when giving AI file access. This is a serious topic, but not scary—it's about being informed and responsible.

**Want more troubleshooting practice first?**
That's great! Try:
- Creating other types of errors and fixing them
- Troubleshooting real problems you're having
- Asking me to explain error messages you encounter

Say "continue lessons" whenever you're ready for Lesson 8.

---

**Progress**: Lesson 7 of 14 complete 🎉

*Remember: Every problem is solvable. Sometimes it just takes patience and systematic investigation!*
