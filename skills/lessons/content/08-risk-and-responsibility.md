# Lesson 8: Risk & Responsibility

We need to talk about something important: **what it means to give AI access to your files and system**.

This lesson is different from the others. It's not about learning a skill—it's about understanding responsibility.

## What You'll Learn

- What file access really means
- What could go wrong (realistically)
- Your responsibility as the human in charge
- How to stay safe while being productive
- When to say "no" to AI suggestions

## Let's Be Direct

When you give AI assistant (me) access to:
- Read your files
- Write new files
- Edit existing files
- Run system commands

You are giving real power over your system.

**This is powerful and useful. It's also a responsibility.**

## What Could Go Wrong?

Let's talk about realistic risks:

### Risk 1: Accidental Deletion
**Scenario**: You ask me to "clean up the temp files" but aren't specific
**Result**: I might delete something important
**Mitigation**: Be specific, review destructive commands before I run them

### Risk 2: Breaking Code
**Scenario**: I edit your code but introduce a bug
**Result**: Your application stops working
**Mitigation**: Use version control (git), test changes, you can always revert

### Risk 3: Configuration Errors
**Scenario**: I modify a config file incorrectly
**Result**: Service won't start
**Mitigation**: Back up configs, review changes, keep old values handy

### Risk 4: Permission Changes
**Scenario**: I change file permissions wrong
**Result**: Security issue or access problems
**Mitigation**: Understand permission changes before agreeing

### Risk 5: Data Loss
**Scenario**: Overwriting important files without backup
**Result**: Lost work
**Mitigation**: Back up important data, use version control

## The Important Part: You're in Charge

**You are responsible** for:
- What you ask me to do
- Reviewing changes before they happen
- Understanding the implications
- Having backups of important data
- Saying "no" or "wait" when something feels wrong

**I will help you stay safe**, but I'm not perfect. You're the ultimate decision-maker.

## The User Responsibility Model

Here's how responsibility works in sourdough:

**You control**:
- What files I can access (you point me to them)
- What commands I run (you approve them)
- What changes I make (you can review first)
- When to stop me (you can always say "wait, don't do that")

**I provide**:
- Warnings about risky operations
- Explanations of what I'm about to do
- Suggestions, not commands
- Help recovering if something goes wrong

**Together**: We make good decisions

## When to Be Extra Careful

Be particularly careful with:
- **System files** (/etc, /System, C:\Windows)
- **Destructive commands** (rm -rf, DROP TABLE, etc.)
- **Production systems** (live servers, databases with real data)
- **Irreversible operations** (permanent deletions, formatting disks)
- **Security-sensitive files** (.ssh keys, passwords, certificates)

**Good practice**: Test on non-critical stuff first.

## Red Flags to Watch For

Stop and think carefully if:
- I suggest running a command you don't understand
- I want to modify system-critical files
- I'm about to delete a lot of files
- I'm changing security settings
- Something feels wrong (trust your gut!)

**It's OK to ask**: "What does that command do?" or "What are the risks?"

## How I Help You Stay Safe

I try to:
- **Warn about dangerous operations**: "This will delete files permanently"
- **Explain commands**: Not just run them blindly
- **Ask for confirmation**: Before destructive operations
- **Suggest backups**: "Let's back this up first"
- **Admit uncertainty**: "I'm not sure about this, let me check"

## The Backup Philosophy

**Golden rule**: Important data should have backups.

Before letting me:
- Modify critical files
- Run database operations
- Delete things
- Restructure projects

**Ask yourself**: "If this goes wrong, can I recover?"

If the answer is "no", make a backup first.

## Version Control is Your Friend

If you're using git (or should be):
- All changes I make are tracked
- You can see exactly what changed: `git diff`
- You can undo anything: `git revert`
- You have complete history

**This makes AI assistance much safer.**

## What About Mistakes?

I'm pretty good, but I make mistakes sometimes:
- Misunderstand what you want
- Make wrong assumptions
- Have bugs in my reasoning
- Overlook edge cases

**That's why you review and stay engaged.**

## Practical Safety Habits

**Before I run commands**:
- Understand what they do
- Consider the consequences
- Have a recovery plan

**After I make changes**:
- Test that things still work
- Review what actually changed
- Keep context in session logs (we'll cover this soon)

**Always**:
- Back up important data
- Use version control for code
- Don't give AI access to production systems (until you're very comfortable)

## The Balance

**Too cautious**: You miss out on productivity gains
**Too trusting**: You risk breaking things

**Just right**: You understand risks, take precautions, and leverage AI effectively

This lesson is about finding that balance.

## My Perspective

I'm here to help you be more productive. I try to:
- Be helpful without being reckless
- Warn you about risks
- Explain what I'm doing
- Respect your judgment

But **you're the human**. Your judgment matters more than my suggestions.

## Questions to Ask Yourself

Before giving me broad access:
- "Do I understand what this does?"
- "What's the worst that could happen?"
- "Do I have backups?"
- "Am I working on something critical?"
- "Can I undo this if needed?"

If you're unsure, start small and build trust.

## Real-World Wisdom

Experienced users:
- Start with AI on non-critical projects
- Use version control religiously
- Review changes before committing
- Keep backups of important data
- Trust, but verify

## Key Takeaways

- AI file access is powerful and useful
- You are responsible for what happens
- Understand risks, take precautions
- It's OK to say "no" or "wait"
- Backups and version control are your safety net
- Start cautious, build confidence over time
- When something feels wrong, pause and ask questions

## This Isn't Meant to Scare You

The goal here isn't to make you afraid of using AI assistance.

The goal is **informed, responsible use**.

Most people use AI assistance without any problems. But they:
- Understand the risks
- Take basic precautions
- Stay engaged in the process
- Don't blindly trust

You can do this too.

## Questions?

This is a good time to ask:
- "What's the most common mistake people make?" (Not using version control)
- "How do I know if a command is safe?" (Ask me to explain it first)
- "What if I'm not technical enough?" (Start simple, ask questions, learn as you go)

---

**Ready for Lesson 9?** Next, we'll learn about the skills system—how to use and create skills for repetitive tasks.

This lesson was serious, but necessary. The rest are back to practical skills!

Say "next lesson" when ready.

---

**Progress**: Lesson 8 of 14 complete 🎉

**Important milestone**: You now understand the responsibility model. Everything else builds on this foundation.
