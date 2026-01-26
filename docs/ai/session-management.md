# Session Management (AI Documentation)

How to read, write, and maintain session logs in sourdough.

## Purpose

Session logs provide **external memory** across conversations:
- What user worked on
- Decisions made
- Files changed
- Next actions

**Problem solved**: AI doesn't remember previous sessions by default. Session logs fix this.

## Location

**Daily logs**: `~/ai-data/logs/sessions/YYYY-MM-DD.md`
**Rolling summary**: `~/ai-data/logs/sessions/rolling-summary.md`

## Format

See full specification in `~/sourdough.ai/docs/session-logging.md`

**Key points for AI**:
- Summary at top (updated throughout day)
- Individual sessions in reverse chronological order
- Structured markdown with specific sections
- Includes: time, host, AI engine, focus, outcomes, files, commits

## When to Read

**At session start**:
1. Read today's log (if exists) - know what's already done today
2. Read last 2-3 days of logs - recent context
3. Optionally read rolling summary - longer-term context

**During session**:
- If user mentions previous work
- If context is unclear
- If user says "continue where we left off"

**Selective reading**:
Don't read entire history every time (token limits). Read strategically:
- Today: always
- Yesterday + day before: usually
- Last week: if relevant to current work
- Older: only if specifically needed

## When to Write

**Create new session entry** when:
- Completed discrete piece of work
- Made significant decision
- About to switch focus areas
- User explicitly asks to document
- Natural breakpoint reached

**Update summary section** when:
- Add new session entry
- Complete milestone
- Significant accomplishment

**Don't create entry** when:
- Still actively working same task
- Just reading/exploring (no action yet)
- Minor clarification in conversation

## How to Write

### Get Current Time

**CRITICAL**: Always get actual time before writing timestamps.

```bash
date +"%H:%M"
```

Or use time tool if available. **Never estimate or guess time.**

### Get Current Host

```bash
hostname
```

Use short hostname (e.g., "MacPinky-2" not "MacPinky-2.local")

### Session Entry Format

```markdown
## Session - HH:MM
**Host**: [hostname]
**AI Engine**: Claude | Gemini | ChatGPT | etc.
**Focus**: [One-line description]

**Outcomes**:
- [Concrete deliverable 1]
- [Specific accomplishment 2]
- [Decision made]

**Files Created**:
- `/absolute/path/to/file1.md`
- `/absolute/path/to/file2.py`

**Files Changed**:
- `/absolute/path/to/existing/file.js`
- `/absolute/path/to/config.yaml`

**Commits** (if applicable):
- repo-name: `abc1234` - commit message
- other-repo: `def5678` - other commit message

**Brew Installs** (if applicable):
- package1, package2, package3

**Next Steps** (if applicable):
- [ ] Action to take in future session
- [ ] Follow-up needed
```

**Critical**:
- Use absolute paths for files
- Be specific in outcomes (not vague)
- Include AI engine attribution
- Get actual time and hostname

### Summary Section Format

```markdown
# Session Log - YYYY-MM-DD

## Summary
**Major Accomplishments**:
- [High-level achievement 1]
- [High-level achievement 2]

**Repos Modified**: repo1 (3 commits), repo2 (1 commit)
**New Infrastructure**: [New systems/patterns established]
**Tools Installed**: tool1, tool2, tool3

## Next Actions
- [Immediate task to pick up]
- [Incomplete work to finish]
- [Testing needed]

## Future Explorations
- [Ideas for later]
- [Medium/long-term improvements]
- [Related projects to investigate]
```

**Update** this section as you add session entries throughout the day.

## AI-Assisted Logging

**User can ask**: "Create a session log entry for what we just did"

**AI should**:
1. Get current time (actual, not estimated)
2. Get hostname
3. Summarize what was accomplished
4. List files created/changed
5. Note any commits made
6. Identify next steps
7. Format according to template
8. Write to today's log file
9. Update summary section

**Example flow**:
```
User: "Log this session"
AI: [gets time: 14:30]
AI: [gets hostname: MacPinky-2]
AI: [reads conversation, identifies: created backup script, tested it, committed]
AI: [formats session entry]
AI: [reads today's log]
AI: [appends new entry below summary]
AI: [updates summary section]
AI: "Session logged. You completed backup script implementation."
```

## Reading from Logs

**Extracting context**:
- Recent work (what's in progress)
- Decisions made (why things are the way they are)
- Next actions (what to do next)
- Patterns (how user typically works)

**Summarizing logs**:
```
User: "What did I work on this week?"
AI: [reads last 7 days of logs]
AI: [summarizes by project/theme]
AI: [notes incomplete items]
```

**Continuing work**:
```
User: "Continue where I left off"
AI: [reads today's log + yesterday's]
AI: [checks "Next Actions" sections]
AI: [identifies most recent incomplete work]
AI: "You were implementing error handling for the backup script. Next step was to add logging."
```

## Rolling Summary

**Purpose**: Condensed view of last 30 days for fast context loading

**Location**: `~/ai-data/logs/sessions/rolling-summary.md`

**Format**:
```markdown
# Rolling Summary - Last 30 Days

**Updated**: YYYY-MM-DD
**Period**: YYYY-MM-DD to YYYY-MM-DD

## Active Work Streams

### Project 1
**Status**: [Current phase]
**Progress**: [What's been done]
**Next**: [What's next]

### Project 2
...

## Major Decisions

- **YYYY-MM-DD**: [Decision] - [Rationale]
- **YYYY-MM-DD**: [Decision] - [Rationale]

## Key Learnings

- [Pattern discovered]
- [Approach that works well]
- [Problem solved]

## Tools/Infrastructure Added

- [New tool/system]
- [Configuration change]

## Metrics

- **Sessions**: [count]
- **Commits**: [count]
- **Projects active**: [count]
```

**When to update**:
- Weekly (every Friday or end of sprint)
- After major milestones
- When daily logs become too numerous to read efficiently

**How to update**:
1. Read last 7-14 days of daily logs
2. Extract themes and patterns
3. Update rolling summary sections
4. Keep condensed (aim for ~150 lines total)

## Multi-Machine Usage

**If user works on multiple machines**:
- Logs are in git repo
- Always `git pull` before reading
- Always `git push` after writing
- Note hostname in session entries (shows where work happened)

**Sync pattern**:
```
User: "Start work on project X"
AI: [runs: cd ~/ai-data && git pull]
AI: [reads today's log]
AI: "I see you worked on this earlier on MacPinky-2. Continuing..."
```

## Session Logging Best Practices

**For AI systems**:
- ✅ Get actual time (don't estimate)
- ✅ Note which AI engine (Claude, Gemini, etc.)
- ✅ Be specific in outcomes
- ✅ Use absolute file paths
- ✅ Update summary when adding sessions
- ✅ Identify next actions
- ❌ Don't log conversations verbatim
- ❌ Don't log sensitive data (passwords, keys)
- ❌ Don't create entries for trivial interactions

**Content guidelines**:
- Focus on **what was accomplished**, not activities
- "Created backup script with error handling" not "Worked on script"
- Include **why** for decisions
- "Chose JSON over YAML for better tool support" not just "Used JSON"
- Note **blockers and dependencies**
- "Blocked on API access" not just "Didn't finish"

## Context Window Optimization

**Problem**: Reading all logs can exceed context limits

**Solutions**:
1. **Read selectively**: Today + last 2-3 days usually sufficient
2. **Use rolling summary**: Compressed longer-term context
3. **Read on demand**: Only fetch older logs if specifically needed
4. **Summarize before reading**: "Give me highlights from last week" vs. reading every entry

## Error Handling

**If log file doesn't exist**: Create it with proper format
**If log format is malformed**: Fix format, don't corrupt further
**If git conflict**: Alert user, help resolve
**If write fails**: Inform user, don't lose data

## Integration with Other Systems

**Project tracking**:
- Link session work to PROJECT.md files
- Note project context in session entries

**Learning framework**:
- Session logs reveal patterns → write to user_model
- Successful approaches → write to approach_registry

**Skills**:
- Skills can read session logs for context
- Skills can write session log entries

## Summary for AI Systems

**Session logs provide**:
- Cross-conversation memory
- Work continuity
- Decision history
- Progress tracking

**AI should**:
- Read at session start (today + recent days)
- Write at natural breakpoints
- Use actual time and hostname
- Be specific and concrete
- Update summary section
- Identify next actions

**Result**: Seamless work continuation across sessions, clear historical record, reduced context-switching cost.
