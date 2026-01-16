# Learning Data Schema

Defines the format for learning files stored in your personal data location.

## user_model.yaml

```yaml
# User Model - [User Name]
# Observations learned through interaction
# AI can write to this file autonomously
#
# Confidence levels:
#   high: Explicit statement or correction from user
#   medium: Inferred from multiple observations
#   low: Single observation, needs validation
#
# Sources:
#   explicit: User directly stated this
#   correction: User corrected AI behavior
#   observed: AI noticed this pattern
#   documented: Already in CLAUDE.md (migrated)

observations:
  - pattern: "Description of observed pattern"
    learned: YYYY-MM-DD
    confidence: high|medium|low
    source: explicit|correction|observed|documented
    context: communication|autonomy|work_style|error_handling|output_format|explanations|philosophy
    quote: "Optional: exact quote if from user"

metadata:
  created: YYYY-MM-DD
  last_updated: YYYY-MM-DD
  total_observations: N
  by_confidence:
    high: N
    medium: N
    low: N
```

## approach_registry/*.yaml

```yaml
# Approach: [Descriptive Name]
# What works for [problem type]

name: "approach-name"
problem_type: "category of problem this addresses"
learned: YYYY-MM-DD
confidence: high|medium|low

description: |
  Multi-line description of the approach
  and when to use it.

steps:
  - "Step 1"
  - "Step 2"
  - "Step 3"

when_to_use:
  - "Condition 1"
  - "Condition 2"

when_not_to_use:
  - "Condition where this approach doesn't work"

examples:
  - situation: "Example situation"
    outcome: "What happened when approach was applied"

related_approaches:
  - "other-approach-name"
```

## pending_learnings.yaml

```yaml
# Pending Learnings
# Observations that might warrant CLAUDE.md updates
# Reviewed periodically by user

pending:
  - observation: "What was observed"
    date: YYYY-MM-DD
    context: "Conversation/situation context"
    potential_action: "What might be added to CLAUDE.md"
    priority: high|medium|low

  - observation: "Another observation"
    date: YYYY-MM-DD
    context: "Context"
    potential_action: "Potential update"
    priority: medium
```

## failures/*.md (Post-Mortems)

```markdown
# Failure Post-Mortem: [Brief Title]

**Date**: YYYY-MM-DD
**Severity**: high|medium|low
**Category**: [Type of failure]

## What Happened

Brief description of the failure.

## Root Cause

Analysis of why this happened.

## Impact

What was affected by this failure.

## Prevention

How to avoid this in the future.

## Lessons Learned

- Lesson 1
- Lesson 2

---

**Created**: YYYY-MM-DD
```
