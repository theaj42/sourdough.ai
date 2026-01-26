# Lesson 10: Session Logging

You understand the basics and skills. Now let's talk about **memory across conversations**: session logging.

## What You'll Learn

- Why session logs matter
- How to maintain context across days/weeks
- What to log (and what not to)
- How AI uses session logs

## The Problem Session Logs Solve

Remember from Lesson 5 that I don't remember previous conversations?

**Session logs solve this.**

They're your **external memory** that preserves:
- What you worked on
- Decisions you made
- Files you created
- Next steps planned

When I read session logs, I get context from past work.

## How Session Logging Works

At the end of work sessions (or natural breakpoints), you create a log entry:

**Location**: `~/ai-data/logs/sessions/YYYY-MM-DD.md`
**Format**: Structured markdown
**Content**: What happened, what changed, what's next

Next time we work together: I read the log and know where we left off.

## Let's Look at an Example

**Say**: "Show me an example session log format"

I'll read the session logging guide and show you the structure.

---

## What to Include in Session Logs

### Summary Section (at top)
- Major accomplishments today
- Repos modified
- Tools installed
- Key decisions

### Individual Session Entries
- **Time**: When the session happened
- **Focus**: What you worked on
- **Outcomes**: What was accomplished
- **Files changed/created**: Specific files
- **Next steps**: What to do next

### Example Entry

```markdown
## Session - 14:30

**Focus**: Setting up automated backup system

**Outcomes**:
- Created backup.sh script with error handling
- Configured cron job for daily execution
- Tested backup to external drive
- Documented usage in README

**Files Created**:
- ~/scripts/backup.sh
- ~/scripts/README.md

**Next Steps**:
- Test backup restoration process
- Set up email notifications for failures
```

## Why This Matters

With session logs:
- **You remember** what you did (great for reports, reviews)
- **AI remembers** context across conversations
- **You track progress** over time
- **You avoid repeating work** or losing track

Without session logs:
- Every conversation starts from zero context
- You explain background repeatedly
- Easy to lose track of decisions
- No audit trail

## When to Update Session Logs

Update logs at:
- **End of focused work sessions**
- **Natural breakpoints** (completed a feature, fixed a bug)
- **Before switching contexts** (changing projects)
- **End of day** (capture what happened)

Don't wait until you forget details!

## What NOT to Log

**Don't include**:
- Passwords or secrets
- API keys
- Personal identifying information (if logs are shared)
- Private information you wouldn't want committed to git

Logs are meant to be **useful, not sensitive**.

## AI-Assisted Logging

Here's a secret: **I can help you write session logs**.

**You**: "Help me create a session log entry for what we just did"
**I**: Generate a properly formatted entry based on our conversation

Try this: "Create a session log entry for Lessons 1-10"

---

## Session Logs and Git

Session logs should be:
- ✅ Committed to git (they're documentation)
- ✅ Synced across machines (if you work on multiple machines)
- ✅ Reviewed periodically (to spot patterns)

This creates a timeline of your work.

## Reading Old Session Logs

At the start of sessions, I can:

**Read today's log**: Pick up where you left off
**Read recent logs**: Understand current work arc
**Read specific logs**: Get context on past decisions

**You**: "Read my session logs from last week"
**I**: Read them, summarize what happened, identify next actions

## Session Logs vs. Git Commits

**Session logs**: High-level narrative of what you did and why
**Git commits**: Low-level record of what changed in code

Both are valuable, different purposes:
- Commits track code changes
- Logs track work context

## Rolling Summary

For long-term projects, sourdough uses a **rolling summary**:

**Location**: `~/ai-data/logs/sessions/rolling-summary.md`
**Purpose**: Condensed view of last 30 days
**Updated**: Weekly or at major milestones

This provides fast context without reading every daily log.

## Let's Practice

Create your first session log entry:

1. "Create a session log for today covering Lessons 1-10"
2. I'll generate a properly formatted entry
3. We'll review it together
4. You'll see how useful this becomes

Try it now!

---

## Session Log Best Practices

**Be specific**: "Created backup script with error handling" not "worked on script"
**Include files**: List what you created/changed
**Note decisions**: "Decided to use cron instead of systemd because..."
**Track next steps**: You'll thank yourself later

## Session Logs Build Over Time

After a few weeks:
- You have a detailed history
- You can see progress clearly
- You identify patterns in your work
- You have material for status reports

This is incredibly valuable.

## Multi-Machine Work

If you work on multiple machines:
- Keep logs in a git repo (like sourdough does)
- Push after each session
- Pull at session start
- Stay synchronized

I can help with: "Sync my session logs" (git pull/push)

## AI Reading Your Logs

When I read your session logs, I can:
- Understand your recent work
- Know what's in progress
- See your decision history
- Identify next actions
- Continue work seamlessly

**This makes AI assistance much more effective.**

## Session Logging Workflow

**Start of session**:
1. I read today's log (if it exists)
2. I read recent logs (last few days)
3. I know where we left off

**During session**:
- We work together
- I remember everything (current conversation context)

**End of session**:
- Create/update today's log entry
- Document what happened
- Note next steps

**Next session**:
- Repeat—context preserved!

## Key Takeaways

- Session logs are external memory across conversations
- Log at natural breakpoints, end of sessions
- Include: what, why, what changed, what's next
- AI can help generate log entries
- Logs enable continuity across days/weeks
- Don't log secrets or sensitive data
- Commit logs to git for cross-machine sync

## Real-World Benefits

People who use session logs report:
- Better work continuity
- Easier context switching
- Clear progress tracking
- Valuable for reports and reviews
- Reduced cognitive load (don't have to remember everything)

## Questions?

Common questions:
- "How detailed should logs be?" (Enough to remember context, not a transcript)
- "Do I have to log everything?" (No, just significant work sessions)
- "Can I go back and fill in old logs?" (Yes, better late than never!)

---

**Ready for Lesson 11?** Next, we'll explore the learning framework—how AI learns your preferences over time.

Say "next lesson" when ready.

---

**Progress**: Lesson 10 of 14 complete 🎉
