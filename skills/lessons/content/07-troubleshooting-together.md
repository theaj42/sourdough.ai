# Lesson 7: Troubleshooting Together

You know the basics: conversation, files, commands. Now let's talk about one of AI's most valuable capabilities: **collaborative troubleshooting**.

## What You'll Learn

- How to troubleshoot problems with AI help
- The troubleshooting workflow
- Common problem patterns
- When AI can figure things out vs. when you need to guide

## Why AI is Good at Troubleshooting

AI can:
- Read error messages and explain them
- Check logs systematically
- Try multiple solutions quickly
- Remember what's been tried already
- Search for known solutions
- Make educated guesses based on patterns

You provide: Domain knowledge, context, judgment
AI provides: Systematic investigation, pattern matching, rapid iteration

## The Troubleshooting Workflow

1. **Describe the problem**: What's not working?
2. **Gather information**: Read logs, check configs, run diagnostic commands
3. **Form hypothesis**: What might be wrong?
4. **Test the hypothesis**: Try a fix
5. **Verify**: Did it work?
6. **Iterate**: If not, try the next hypothesis

We do this **together**.

## Let's Work Through an Example

**Scenario**: "My Python script isn't working"

**Step 1 - I ask for details**:
- "What error are you seeing?"
- "Can you share the script or error message?"

**Step 2 - Gather information**:
- "Let me read your script"
- "Let's run it and see the exact error"

**Step 3 - Diagnose**:
- I read the code
- I see the error
- I identify the likely cause

**Step 4 - Fix**:
- "The issue is on line 15—you're missing a closing quote"
- I edit the file to fix it

**Step 5 - Verify**:
- "Let's run it again to confirm"
- Success!

## Practical Troubleshooting Examples

### Example 1: Import Error

**Problem**: `ModuleNotFoundError: No module named 'requests'`

**Troubleshooting**:
1. Check if package is installed: `pip list | grep requests`
2. Check Python environment: `which python`
3. Install if missing: `pip install requests`
4. Verify import works

### Example 2: Permission Denied

**Problem**: `Permission denied` when running a script

**Troubleshooting**:
1. Check file permissions: `ls -l script.sh`
2. See it's not executable
3. Fix permissions: `chmod +x script.sh`
4. Run again successfully

### Example 3: Config File Error

**Problem**: Application won't start, vague error

**Troubleshooting**:
1. Read application logs
2. See "invalid YAML syntax" error
3. Read config.yaml
4. Find indentation problem
5. Fix indentation
6. Restart application

## Information I Need

To help troubleshoot, tell me:
- **What you're trying to do**: "I want to run this backup script"
- **What's happening instead**: "I get an error message"
- **The exact error**: Copy/paste the error text
- **What you've tried**: "I already checked the file exists"

The more info you provide, the faster we solve it.

## Let's Practice

Let's create a problem and solve it together:

1. **You**: "Create a Python file with a syntax error on purpose"
2. **I**: Create it
3. **You**: "Now run it and help me fix the error"
4. **I**: Run it, see the error, explain it, fix it

Try this workflow!

---

## Common Problem Patterns

### Pattern 1: Path Issues
- File not found errors
- Usually wrong path or typo
- **Solution**: Verify paths with ls/dir

### Pattern 2: Permissions
- Permission denied errors
- **Solution**: Check with ls -l, fix with chmod

### Pattern 3: Dependencies
- Import/module errors
- **Solution**: Install missing packages

### Pattern 4: Syntax Errors
- Code won't parse
- **Solution**: Read code, find syntax issue

### Pattern 5: Configuration
- App won't start or behaves wrong
- **Solution**: Read and verify config files

## The Systematic Approach

When troubleshooting, I:
1. **Read error messages carefully** (they usually tell you what's wrong)
2. **Check the obvious first** (file exists? permissions OK? typos?)
3. **Isolate the problem** (which component is failing?)
4. **Test one thing at a time** (so we know what fixed it)
5. **Verify the fix** (run it again to confirm)

## When I Get Stuck

Sometimes I'll need your help:
- "Do you have admin/sudo privileges?"
- "What version of [software] are you running?"
- "Can you check if [service] is running?"

Troubleshooting is collaborative—we figure it out together.

## Debugging Complex Issues

For harder problems:
1. **Break it down**: Isolate which part is failing
2. **Add logging**: Insert print statements or logging
3. **Test incrementally**: Does step 1 work? Step 2?
4. **Compare**: What changed? What's different from when it worked?

## I Can Try Multiple Fixes

If the first fix doesn't work:
- I remember what we tried
- I form a new hypothesis
- We try the next solution
- We keep iterating until it works

**You don't have to solve it alone.**

## Key Takeaways

- Troubleshooting is collaborative: you + AI together
- Systematic approach: gather info → diagnose → fix → verify
- Exact error messages are incredibly helpful
- Many problems follow common patterns
- If first fix doesn't work, we iterate
- AI can try solutions faster than manual debugging

## Real-World Troubleshooting

**Developers**: Debug code, dependency issues, build errors
**Operations**: Service failures, configuration problems, log analysis
**Everyone**: Software not working, installation problems, "something broke"

## Troubleshooting Mindset

**Good mindset**:
- "Something's wrong, let's figure out what"
- "Here's what I tried already"
- "Let's check the logs"

**Less effective**:
- "Everything's broken, fix it" (too vague)
- "I don't know anything about this" (you know more than you think!)
- Giving up before we've gathered information

## Advanced: Preventive Troubleshooting

We can also:
- Check for potential issues before they happen
- Add error handling to scripts
- Validate configurations before using them
- Set up logging for future debugging

## Questions?

Common questions:
- "What if you can't figure it out?" (We can search for solutions or ask for outside help)
- "How do you know what to try?" (Pattern matching from common problems and error messages)
- "Can you fix hardware problems?" (No, only software issues)

---

**Ready for Lesson 8?** Next is a critical lesson: understanding risk and responsibility when giving AI file access.

Say "next lesson" when ready.

---

**Progress**: Lesson 7 of 14 complete 🎉
