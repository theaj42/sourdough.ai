# Lesson 10: Session Logging

You understand the basics and skills. Now let's talk about **memory across conversations**: session logging.

## What You'll Learn

- Why session logs matter
- How to maintain context across days/weeks
- What to log (and what not to)
- How AI uses session logs

---

## Part 1: The Problem Session Logs Solve

Remember from Lesson 5 that I don't automatically remember previous conversations?

**Session logs solve this.**

They're your **external memory** that preserves:
- What you worked on
- Decisions you made
- Files you created/changed
- Next steps planned

When I read session logs at the start of a new conversation, I get context from past work. It's like catching up on what happened while I was away.

### The Difference It Makes

**Without session logs**:
- Every conversation starts from zero context
- You explain background repeatedly
- Easy to lose track of decisions
- No audit trail of what you've done

**With session logs**:
- I know where we left off
- Context carries across sessions
- You track progress over time
- You have a record of your work

### Try This

Let's see if you have a session log for today. Ask me:

"Do I have a session log for today?"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Check if ~/ai-data/logs/sessions/YYYY-MM-DD.md exists for today. If yes, read and summarize it briefly. If no, explain that we can create one. Then continue.]**

---

Good! Now you know whether we're starting fresh or continuing previous work.

## Part 2: What Goes in a Session Log

Session logs have a specific structure that makes them useful:

### At the Top: Summary Section
- **Major Accomplishments**: What you achieved today (high-level)
- **Repos Modified**: Which git repos you worked in
- **New Infrastructure**: New systems or tools set up
- **Tools Installed**: Software you installed

### Individual Session Entries
Each work session gets an entry with:
- **Time**: When the session happened (24-hour format)
- **Host**: Which machine you're on
- **AI Engine**: Which AI helped (Claude, Gemini, etc.)
- **Focus**: One-line description of the session
- **Outcomes**: What was accomplished
- **Files Created/Changed**: Specific files modified
- **Commits**: Git commits made (if applicable)
- **Next Steps**: What to do next (if applicable)

### At the Bottom: Next Actions & Future Explorations
- **Next Actions**: Immediate tasks to resume
- **Future Explorations**: Ideas for later

### Try This

Let's create a session log entry for our lessons so far. Ask me:

"Help me create a session log entry for completing Lessons 1-10"

I'll generate a properly formatted entry.

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Generate a session log entry documenting their progress through the lessons. Use the correct format with time (use actual time from date command), host (from hostname command), focus on "Sourdough Lessons", outcomes listing lessons completed, and next steps mentioning lessons 11-14. Show them the formatted entry and offer to save it. Then continue.]**

---

Perfect! See how that captures what you've accomplished?

## Part 3: When to Update Session Logs

Update your session log at:

**Natural breakpoints**:
- Completed a deliverable
- Made a significant decision
- About to switch focus areas
- End of a work session

**Don't wait until you forget details!** Update as you go.

The pattern is:
1. Do some work
2. Reach a natural stopping point
3. Document what happened
4. Note what's next

This keeps the log current and preserves nuance before details fade.

### What NOT to Log

**Don't include**:
- Passwords or secrets
- API keys
- Private information you wouldn't commit to git
- Sensitive data

Logs are meant to be **useful, not sensitive**. They'll be committed to git, so keep them appropriate for that.

## Part 4: AI-Assisted Logging

Here's a secret: **I can help you write session logs**.

Instead of manually formatting everything, you can ask:
- "Help me create a session log entry for what we just did"
- "Update today's session log with our work"
- "Document this session"

I'll generate properly formatted entries based on our conversation.

### Try This

Think about something you did recently (today or this week) that you haven't logged yet. Then ask me:

"Help me create a session log entry for [what you did]"

I'll help you document it properly.

**Go ahead—what do you want to log?**

**[PAUSE - Wait for user to describe something to log. Help them create a well-formatted session log entry with all the right sections. If they don't have something specific, offer to create an entry for their lesson progress. Then continue.]**

---

Nice! See how much easier that is than manually formatting everything?

## Part 5: Reading Old Session Logs

At the start of future sessions, I can read your logs to understand context:

**Read today's log**: Pick up where you left off
**Read recent logs**: Understand current work arc
**Read specific logs**: Get context on past decisions

**Example**: "Read my session logs from last week"

I'll read them, summarize what happened, and identify next actions.

This makes continuation seamless—like we never stopped working together.

### Rolling Summary

For long-term projects, sourdough uses a **rolling summary**:

**File**: `~/ai-data/logs/sessions/rolling-summary.md`
**Purpose**: Condensed view of last 30 days
**Updated**: Weekly or at major milestones
**Benefit**: Fast context loading without reading every daily log

Think of it as: daily logs are detailed, rolling summary is the highlight reel.

---

## Wrap-Up: Memory Across Time

Great work! You now understand how session logging creates memory across conversations.

### Key Takeaways

✅ Session logs are external memory across conversations
✅ Log at natural breakpoints, don't wait until end of day
✅ Include: what, why, what changed, what's next
✅ I can help generate log entries
✅ Logs enable continuity across days/weeks
✅ Don't log secrets or sensitive data
✅ Commit logs to git for cross-machine sync

### Real-World Benefits

People who use session logs report:
- Better work continuity
- Easier context switching
- Clear progress tracking
- Valuable for reports and reviews
- Reduced cognitive load (don't have to remember everything)

### Session Logging Workflow

**Start of session**:
1. I read today's log (if it exists)
2. I read recent logs (last few days)
3. I know where we left off

**During session**:
- We work together
- I remember everything (current conversation context)

**Natural breakpoints**:
- Create/update session log entry
- Document what happened
- Note next steps

**Next session**:
- Repeat—context preserved!

### Common Questions

Before we finish, let me answer common questions:

**"How detailed should logs be?"**
Enough to remember context, but not a transcript. Focus on outcomes and decisions.

**"Do I have to log everything?"**
No, just significant work sessions. Quick tasks don't need entries.

**"Can I go back and fill in old logs?"**
Yes! Better late than never.

**"What if I work across multiple machines?"**
Session logs in git (like sourdough does) sync automatically when you push/pull.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 11?**
Next, we'll explore the learning framework—how AI learns your preferences and patterns over time.

**Want to practice logging first?**
That's great! Try:
- Creating entries for recent work
- Reading old logs
- Establishing your logging rhythm

Say "continue lessons" whenever you're ready for Lesson 11.

---

**Progress**: Lesson 10 of 14 complete 🎉

*Remember: Session logs are how you give AI memory. The more you log, the smarter our collaboration becomes!*
