# Lesson 8: Risk & Responsibility

We need to talk about something important: **what it means to give AI access to your files and system**.

This lesson is different from the others. It's not about learning a skill—it's about understanding responsibility.

## What You'll Learn

- What file access really means
- What could go wrong (realistically)
- Your responsibility as the human in charge
- How to stay safe while being productive

---

## Part 1: Let's Be Direct

When you give an AI assistant (me) access to:
- Read your files
- Write new files
- Edit existing files
- Run system commands

You are giving real power over your system.

**This is powerful and useful. It's also a responsibility.**

I'm not telling you this to scare you. I'm telling you because **informed users make good decisions**.

### Understanding What "Access" Means

Let me be specific about what I can do when you ask:

**I can**:
- Read any file you point me to
- Create new files anywhere
- Edit existing files
- Delete files (if you ask)
- Run commands with your privileges
- Install software
- Change configurations

**I cannot**:
- Do anything you don't ask me to
- Access files you don't point me to
- Guess your passwords or read your mind
- Do things in the background without telling you

**You control** what I do. But once you ask, I have the technical capability to do it.

## Part 2: What Could Realistically Go Wrong?

Let's talk about realistic risks. Not hypothetical disasters, but things that could actually happen.

### Risk 1: Accidental Deletion

**Scenario**: You ask me to "clean up the temp files" but aren't specific about which files.

**What could happen**: I might delete something important that you didn't mean to delete.

**Prevention**:
- Be specific about what to delete
- Ask me to list files first before deleting
- Have backups of important data

### Risk 2: Breaking Code

**Scenario**: I edit your code but introduce a bug or make a wrong assumption.

**What could happen**: Your application stops working.

**Prevention**:
- Use version control (git) so you can undo changes
- Test changes after I make them
- Review diffs before committing
- Work on non-critical projects first

### Risk 3: Configuration Errors

**Scenario**: I modify a config file incorrectly.

**What could happen**: A service won't start or behaves incorrectly.

**Prevention**:
- Back up configs before changing them
- Review changes before applying them
- Keep old values handy to restore
- Test in development, not production

### Risk 4: Permission Changes

**Scenario**: I change file permissions wrong.

**What could happen**: Security issue or access problems.

**Prevention**:
- Understand what permission changes mean
- Ask me to explain before agreeing
- Only change permissions on files you own

### Risk 5: Running Wrong Commands

**Scenario**: I misunderstand what you want and run the wrong command.

**What could happen**: Unintended system changes.

**Prevention**:
- Ask me to explain commands first
- Review what I'm about to do
- Start with simple, reversible operations

### Try This

Let's practice thinking about risks. I'm going to describe a scenario, and you tell me what concerns you about it.

**Scenario**: "You ask me to delete all files in a directory older than 30 days."

What questions would you want to ask before I do that?

**Think about it, then tell me your concerns.**

**[PAUSE - Wait for user to express their concerns or questions. Good answers might include: which directory? what files are in there? can I see the list first? do I have backups? Then affirm their thinking and explain that's exactly the right approach: ask questions, get specifics, verify before destructive operations. Then continue.]**

---

Great thinking! Those are exactly the right questions to ask. That's what being responsible looks like.

## Part 3: The Important Part—You're in Charge

Here's the core principle: **You are responsible** for what happens.

**You are responsible for**:
- What you ask me to do
- Reviewing changes before they happen
- Understanding the implications
- Having backups of important data
- Saying "no" or "wait" when something feels wrong

**I will help you stay safe** by:
- Warning about risky operations
- Explaining what I'm about to do
- Asking for confirmation on destructive operations
- Admitting when I'm uncertain
- Showing you what changed

**Together**: We make good decisions.

### When to Be Extra Careful

Be particularly careful with:
- **System files** (/etc, /System, C:\Windows)
- **Destructive commands** (rm -rf, DROP TABLE, etc.)
- **Production systems** (live servers, databases with real data)
- **Irreversible operations** (permanent deletions, formatting)
- **Security-sensitive files** (.ssh keys, passwords, certificates)

**Good practice**: Test on non-critical stuff first. Build trust gradually.

### Red Flags to Watch For

Stop and think carefully if:
- I suggest running a command you don't understand
- I want to modify system-critical files
- I'm about to delete a lot of files
- I'm changing security settings
- Something feels wrong (trust your gut!)

**It's always OK to ask**:
- "What does that command do?"
- "What are the risks?"
- "Can you show me what would change first?"
- "Let me think about this"

## Part 4: Your Safety Net

Here are the safety practices that make AI assistance safer:

### 1. Version Control (Git)

If you're using git for your projects:
- ✅ All changes I make are tracked
- ✅ You can see exactly what changed: `git diff`
- ✅ You can undo anything: `git revert`
- ✅ You have complete history

**This is your best safety net.**

### 2. Backups

**Golden rule**: Important data should have backups.

Before letting me:
- Modify critical files
- Run database operations
- Delete things
- Restructure projects

**Ask yourself**: "If this goes wrong, can I recover?"

If the answer is "no," make a backup first.

### 3. Test Changes

After I make changes:
- Does it still work?
- Did it change what I expected?
- Are there unexpected side effects?

Don't assume it's perfect—verify.

### 4. Start Small

Don't give AI access to:
- Production systems (at first)
- Critical infrastructure
- Sensitive data
- Your company's main database

**Start with**: Personal projects, test environments, non-critical work.

Build confidence, then expand gradually.

### Try This

Let's practice thinking about safety. Tell me about something you want to do with AI assistance, and we'll talk through the safety considerations.

For example:
- "I want help organizing my photo collection"
- "I want to automate my backup script"
- "I want help with a coding project"

**What would you like help with? Tell me, and we'll discuss what safety measures would make sense.**

**[PAUSE - Wait for user to describe something they want help with. Discuss the specific safety considerations: what could go wrong, what precautions make sense, what the right approach would be. Be encouraging but realistic. Then continue.]**

---

Good! See how thinking through the safety considerations helps you make informed decisions?

## Part 5: The Balance

Here's what I want you to understand:

**Too cautious**: You miss out on productivity gains and never learn what's possible.

**Too trusting**: You risk breaking things or losing data.

**Just right**: You understand the risks, take reasonable precautions, and leverage AI effectively.

This lesson is about finding that balance.

### My Perspective

I'm here to help you be more productive. I try to:
- Be helpful without being reckless
- Warn you about risks
- Explain what I'm doing
- Respect your judgment

But **you're the human**. Your judgment matters more than my suggestions.

If something feels wrong, pause and ask questions. If you're unsure, start smaller. If you want to understand better, ask me to explain.

---

## Wrap-Up: Informed and Responsible

Thank you for taking this lesson seriously. Understanding risk and responsibility makes you a better AI collaborator.

### Key Takeaways

✅ AI file access is powerful and useful—and comes with responsibility
✅ You are in charge of what happens
✅ Most risks are preventable with basic precautions
✅ It's OK to say "no," "wait," or "explain that first"
✅ Version control and backups are your safety net
✅ Start cautious, build confidence over time
✅ When something feels wrong, pause and ask questions

### This Isn't Meant to Scare You

The goal here isn't to make you afraid of using AI assistance.

The goal is **informed, responsible use**.

Most people use AI assistance without any problems. But they:
- Understand the risks
- Take basic precautions
- Stay engaged in the process
- Don't blindly trust

You can do this too.

### Real-World Wisdom

Experienced users say:
- "Start with version control—it's your undo button"
- "Test changes before committing them"
- "When in doubt, ask AI to explain first"
- "Build trust gradually on non-critical work"
- "The safety mindset becomes second nature"

### Common Questions

Before we finish, let me answer common questions:

**"What's the most common mistake people make?"**
Not using version control. It's the single best safety measure.

**"How do I know if a command is safe?"**
Ask me to explain it first. I'll tell you what it does and any risks.

**"What if I'm not technical enough?"**
Start simple, ask lots of questions, learn as you go. You don't need to be an expert.

**"Should I be worried?"**
No. Be aware, be responsible, and take basic precautions. You'll be fine.

**Any other questions?** This is a good time to ask.

---

## Next Steps

**Ready for Lesson 9?**
Next, we'll get back to practical skills: learning about the skills system—how to use and create skills for repetitive tasks.

This lesson was serious, but necessary. The rest are back to building useful things!

**Need time to think?**
That's perfectly fine. This is important stuff. Take your time, and say "continue lessons" whenever you're ready.

---

**Progress**: Lesson 8 of 14 complete 🎉

**Important milestone**: You now understand the responsibility model. Everything else builds on this foundation.

*Remember: Being informed means you can use AI confidently and safely.*
