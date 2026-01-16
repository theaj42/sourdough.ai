# Session Logging

How to maintain continuity across conversations with session logs.

---

## Why Session Logs?

Claude Code conversations are ephemeral—context resets between sessions. Session logs solve this by:

- **Preserving context**: What you worked on, decisions made, why
- **Enabling continuity**: Pick up where you left off
- **Tracking progress**: See what you've accomplished over time
- **Feeding the learning system**: Logs become input for insights

---

## Location

```
~/ai-data/logs/sessions/
├── 2025-01-15.md      # One file per day
├── 2025-01-16.md
├── 2025-01-17.md
└── rolling-summary.md  # Condensed view of recent work (optional)
```

---

## Format

### Daily Log Structure

```markdown
# Session Log - YYYY-MM-DD

## Summary
**Major Accomplishments**:
- High-level bullet points of what was achieved today

## Next Actions
- Immediate tasks to pick up when resuming
- Incomplete work from this session

## Future Explorations
- Ideas for later
- Things to investigate when time allows

---

## Session - HH:MM
**Focus**: One-line description of what this session was about

**Outcomes**:
- What was accomplished
- Decisions made
- Problems solved

**Files Created**:
- `path/to/new/file.py`

**Files Changed**:
- `path/to/modified/file.js`

**Commits** (if applicable):
- repo-name: `abc123` - commit message

---

## Session - HH:MM
(Earlier session - reverse chronological order)
```

### Key Principles

1. **Summary at top**: Immediately see today's accomplishments
2. **Reverse chronological**: Latest session first
3. **Concrete outcomes**: Focus on deliverables, not activities
4. **Track files**: Know what changed and where

---

## When to Update

### Create a new session entry when:
- You've completed a distinct piece of work
- You've made a significant decision
- You're about to switch focus areas
- The session is ending

### Update the summary when:
- Adding a new session entry
- Major accomplishments change

### Don't create an entry for:
- Brief questions or lookups
- Work still in progress with no concrete outcome yet

---

## Example

```markdown
# Session Log - 2025-01-16

## Summary
**Major Accomplishments**:
- Set up new project repository with CI/CD
- Fixed authentication bug in API
- Documented deployment process

## Next Actions
- Add unit tests for auth module
- Review PR from teammate

## Future Explorations
- Consider switching to JWT tokens
- Look into rate limiting options

---

## Session - 14:30
**Focus**: Documentation and deployment setup

**Outcomes**:
- Created deployment guide in docs/
- Added GitHub Actions workflow for CI
- Configured staging environment variables

**Files Created**:
- `docs/deployment.md`
- `.github/workflows/ci.yml`

**Commits**:
- my-project: `f7a2b1c` - Add CI workflow and deployment docs

---

## Session - 10:15
**Focus**: Fix authentication bug

**Outcomes**:
- Identified root cause: token expiry not being checked
- Added token validation middleware
- Tested fix across all auth endpoints

**Files Changed**:
- `src/middleware/auth.js`
- `src/utils/token.js`

**Commits**:
- my-project: `3d4e5f6` - Fix token expiry validation
```

---

## Tips

### Be specific
- **Bad**: "Worked on the project"
- **Good**: "Added user authentication with OAuth2 flow"

### Track decisions
Include *why* you made choices, not just what you did. Your future self will thank you.

### Use accurate timestamps
Use `date +"%H:%M"` to get the current time. Don't estimate.

### Update at natural breakpoints
Don't wait until the end—update as you complete distinct pieces of work.

### Keep Next Actions current
This is what you'll read first in your next session. Make it useful.

---

## Rolling Summary (Optional)

For longer-term context, maintain a rolling summary:

```
~/ai-data/logs/sessions/rolling-summary.md
```

This condenses the last 2-4 weeks into a single document:
- Active projects and their status
- Key decisions made
- Patterns and themes

Update weekly or when major shifts happen.

---

## Integration with Learning

Session logs feed into the learning system:

1. **Observations**: Patterns noticed during sessions → `user_model.yaml`
2. **Approaches**: What worked for problems → `approach_registry/`
3. **Failures**: What went wrong → `failures/`

The more detailed your logs, the more your AI assistant can learn from them.

---

## Getting Started

1. Create the directory: `mkdir -p ~/ai-data/logs/sessions`
2. Start today's log: Create `YYYY-MM-DD.md` with the template above
3. Tell Claude about it: Add session logging instructions to your CLAUDE.md
4. Build the habit: Update at session end or natural breakpoints

---

*Session logs are how your AI assistant develops memory across conversations. The investment pays off quickly.*
