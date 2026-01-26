# Learning Framework (AI Documentation)

How AI systems learn and adapt to user preferences in sourdough.

## Purpose

Enable AI to:
- Observe user patterns over time
- Capture preferences (stated and implied)
- Remember what works for specific problems
- Document failures to avoid repeating
- Personalize assistance progressively

## Location

**Framework** (templates only): `~/sourdough.ai/learning/templates/`
**Personal data** (actual learning): `~/ai-data/learning/`

## Components

### 1. User Model (`user_model.yaml`)

**Purpose**: Observations about how user works

**Schema**:
```yaml
communication:
  - "Prefers concise responses"
  - "Dislikes excessive enthusiasm"
  - "Values direct feedback"

working_style:
  - "Builds over plans (avoid analysis paralysis)"
  - "Prefers iteration over perfection"
  - "Likes to learn by doing"

technical_preferences:
  - "Uses bash extensively"
  - "Prefers Python for scripting"
  - "Always reviews diffs before committing"

corrections:
  - date: "2026-01-15"
    context: "File editing workflow"
    correction: "Always read before edit"

pet_peeves:
  - "Don't create files without asking"
  - "No emoji in code comments"

quoted_preferences:
  - quote: "Choose the simplest path to the goal"
    date: "2026-01-10"
    context: "Architecture discussion"
```

**When to write**:
- User explicitly states preference
- User corrects AI behavior (2+ times = pattern)
- Strong pattern observed (5+ occurrences)
- User says something quotable about preferences

**When to read**:
- At session start (every time)
- When unsure about user preference
- Before making style decisions

### 2. Approach Registry (`approach_registry/*.yaml`)

**Purpose**: What works for what problem types

**Schema** (`problem-name.yaml`):
```yaml
problem_type: "Setting up Python project"
context: "General purpose Python development"

approach:
  steps:
    - "Create virtual environment: python3 -m venv venv"
    - "Create requirements.txt with pinned versions"
    - "Create .gitignore for Python"
    - "Create README.md with setup instructions"
    - "Create tests/ directory"

  rationale: "Isolated dependencies, reproducible setup"

alternatives_tried:
  - approach: "System-wide pip install"
    result: "Failed due to dependency conflicts"
    date: "2026-01-05"

success_metrics:
  uses: 8
  success_rate: "100%"
  last_used: "2026-01-20"

notes:
  - "Works well for internal projects"
  - "Team prefers this pattern"

tags: ["python", "setup", "best-practice"]
```

**When to write**:
- Successfully solve a problem worth remembering
- Try an approach that fails (document alternative)
- Refine existing approach with improvements

**When to read**:
- User describes problem matching known type
- Before suggesting solution approach
- When user asks "what's the best way to..."

### 3. Pending Learnings (`pending_learnings.yaml`)

**Purpose**: Observations awaiting review/promotion

**Schema**:
```yaml
observations:
  - id: 1
    date: "2026-01-18"
    observation: "User consistently chooses JSON over YAML for configs"
    frequency: 4
    confidence: "medium"
    potential_rule: "Default to JSON for configuration files"
    requires_confirmation: true

  - id: 2
    date: "2026-01-20"
    observation: "User always wants tests before implementation"
    frequency: 6
    confidence: "high"
    potential_rule: "Write tests first (TDD approach)"
    requires_confirmation: false
```

**When to write**:
- Notice pattern but unsure if it's preference
- Seen behavior 3+ times
- Potential rule that might be too rigid

**When to read**:
- Monthly review (AI prompts user)
- Before promoting to user_model.yaml

**Promotion**:
- User confirms → move to user_model.yaml
- User rejects → delete
- User refines → update and keep pending

### 4. Failures (`failures/*.md`)

**Purpose**: Post-mortems to prevent repeating mistakes

**Schema** (`YYYY-MM-DD-brief-description.md`):
```markdown
# Failure Post-Mortem: [Brief Description]

**Date**: 2026-01-15
**Severity**: High / Medium / Low
**Project**: [Project name or "General"]

## What Happened

[Clear description of what went wrong]

## Impact

- [Who/what was affected]
- [How bad was it]
- [Time to recover]

## Root Cause

[Why did this happen? Be specific.]

## Contributing Factors

- [Factor 1]
- [Factor 2]

## What We Did Wrong

[Honest assessment, no blame]

## Prevention Strategy

[Specific steps to prevent recurrence]

- [ ] Actionable step 1
- [ ] Actionable step 2

## Lessons Learned

- [Key learning 1]
- [Key learning 2]

## Status

Implemented / Partially Implemented / Planned
```

**When to write**:
- Significant failure occurs
- AI makes notable mistake
- Process breaks down
- User experiences problem

**When to read**:
- Before similar operations
- When user mentions past problem
- Periodic review to reinforce learnings

## Writing to Learning Files

### Autonomous Writing

**AI should write without asking** when:
- Clear preference stated by user
- Strong pattern observed (5+ occurrences)
- Correction given multiple times
- Failure occurs that should be documented

**Process**:
1. Determine which file (user_model, approach_registry, etc.)
2. Read existing file (if exists)
3. Add new entry or update existing
4. Write file
5. Optionally inform user ("Noted your preference for X")

### When to Ask First

**AI should ask before writing** when:
- Uncertain if pattern is real
- Observation might be context-specific
- User hasn't explicitly confirmed
- Writing might feel intrusive

### File Operations

**Creating**:
- If file doesn't exist, create from template
- Initialize with proper schema
- Add first entry

**Updating**:
- Read existing content first
- Append or update relevant section
- Preserve structure and formatting
- Maintain chronological order where relevant

**Format**:
- Use YAML for structured data (user_model, approaches)
- Use Markdown for narrative (failures)
- Include dates for temporal tracking
- Use comments for clarity

## Reading from Learning Files

### Session Start

**Always read** at session start:
- `user_model.yaml` (if exists)

**Optionally read**:
- Recent failures (last 30 days)
- Relevant approaches (if known problem type)

### During Work

**Read when**:
- User describes problem matching known approach
- Making style/preference decisions
- Unsure about user's typical pattern
- Need to check past failures

### Context Window Management

**Optimize**:
- Don't load all learning files every time
- Read selectively based on task
- Summarize large files instead of full read
- Cache frequently used patterns

## Learning Observations

### What to Observe

**Communication patterns**:
- Response length preferences
- Tone preferences (formal, casual, direct)
- Emoji usage (love/hate)
- Explanation depth

**Working style**:
- Planning vs doing
- Perfectionism vs shipping
- Error handling approach
- Testing philosophy

**Technical choices**:
- Tool preferences
- Language preferences
- Architecture patterns
- Code style

**Decision patterns**:
- Risk tolerance
- Optimization priorities
- Trade-off preferences

### How to Observe

**Direct statements**:
- "I prefer X over Y"
- "I always do Z"
- "Don't ever do W"

**Corrections**:
- "No, use X instead"
- "That's not what I meant"
- Multiple corrections = strong signal

**Patterns**:
- User consistently chooses option A
- User always does step X before step Y
- User never uses feature Z

**Context**:
- Why did user choose this?
- What was the situation?
- Was it specific or general preference?

## Personalization Impact

**Weeks 1-2**:
- Basic preferences captured
- Communication style adapted
- Common patterns noted

**Month 1**:
- Solid user model
- Several approaches registered
- Style becomes familiar

**Month 2-3**:
- Deep personalization
- Anticipate preferences
- Suggest aligned approaches
- Feel like "knows me"

**Result**: AI becomes truly personal assistant, not generic helper.

## Privacy

**All learning data**:
- Stays in `~/ai-data/learning/`
- User's local machine only
- Never shared (unless user chooses)
- Fully inspectable (plain text files)
- User can edit/delete anytime

## Team Sharing (Optional)

**If team wants shared approaches**:
- Create team repo for approach_registry
- Each member keeps personal user_model
- Shared learnings, personal preferences

## Maintenance

**User should review**:
- Monthly: User model (still accurate?)
- Quarterly: Approaches (still valid?)
- As needed: Failures (implemented prevention?)

**AI should prompt**: "It's been a month, should we review your user model?"

## Guidelines for AI Systems

**Do**:
- ✅ Write observations autonomously when clear
- ✅ Read user model at every session start
- ✅ Check approaches for known problems
- ✅ Document failures when they occur
- ✅ Respect stated preferences always

**Don't**:
- ❌ Write observations for one-off situations
- ❌ Override explicit user instructions
- ❌ Assume pattern from 1-2 occurrences
- ❌ Write to learning files on every action
- ❌ Ignore user model when loaded

**Balance**: Learn progressively, don't over-index on limited data.

## Summary

**Learning framework**:
- Captures user patterns and preferences
- Stores in structured files (YAML/Markdown)
- Enables progressive personalization
- User maintains control and privacy

**AI systems should**:
- Read user model at session start
- Write observations autonomously (when clear)
- Check approaches for known problems
- Document failures to prevent recurrence
- Respect preferences consistently

**Result**: AI assistance that gets better over time and feels personally tailored.
