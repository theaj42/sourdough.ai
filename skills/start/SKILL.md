---
name: start
description: Load context from previous sessions so you can pick up where you left off
---

# Session Start

Run this at the beginning of each working session, or when starting a new conversation with your AI assistant.

**Invocation**: `/start` or "Let's start a session"

## Instructions

When this skill is invoked, follow these steps:

### 1. Read Recent Session Logs

Look for session logs in `~/ai-data/logs/sessions/`.

Read the last 3-7 days of logs (files named `YYYY-MM-DD.md`). Focus on:
- **Summary** sections - what was accomplished
- **Next Actions** - incomplete work
- **Recent sessions** - context from last few conversations

If no session logs exist yet, that's fine - this is a new system.

### 2. Read User Preferences (if they exist)

Check for `~/ai-data/learning/user_model.yaml`.

If it exists, read it to understand:
- How the user prefers to work
- Communication style preferences
- Common patterns and preferences

If it doesn't exist yet, skip this step.

### 3. Check for Pending Items

Look in the most recent session log for:
- TODOs that weren't completed
- "Next Actions" that need follow-up
- Open questions from previous sessions

### 4. Brief Acknowledgment

Respond with a short acknowledgment. Examples:

- "Caught up on recent sessions. Ready to continue."
- "Read your logs from the past few days. Last time we were working on [X]."
- "First session - no history yet. What would you like to work on?"

**Keep it brief.** Don't summarize everything unless the user asks.

---

## What This Skill Creates

Over time, as you use `/start` regularly:
- Your AI maintains continuity across conversations
- Incomplete work gets surfaced automatically
- Context doesn't need to be re-explained

---

## Customization Ideas

As you get comfortable, you might add:
- Daily notes integration (if you use Obsidian, Logseq, etc.)
- Calendar check at session start
- Inbox/task list review

These are enhancements - the core skill works without them.
