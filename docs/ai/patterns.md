# Common Patterns (AI Documentation)

Proven workflows and best practices for sourdough AI systems.

## Session Start Pattern

```
1. Check hostname (which machine)
2. Git pull (~/AI-assistant if exists, ~/sourdough.ai)
3. Read today's session log (if exists)
4. Read last 2-3 days of session logs
5. Read user_model.yaml (if exists)
6. Brief acknowledgment ("Reviewed logs")
7. Ready for user's request
```

**When**: Start of every session in home directory
**Why**: Context loading for continuity
**Skip if**: User explicitly says to skip, or starting in project directory

## Skill Execution Pattern

```
1. User invokes skill
2. Load SKILL.md from personal or framework layer
3. Read completely (don't skip sections)
4. Follow Process section step-by-step
5. Use only allowed-tools
6. Match specified output format
7. Handle errors as skill specifies
```

**When**: User says "use [skill]" or triggers skill
**Why**: Consistent, predictable execution

## File Edit Pattern

```
1. Read the file (ALWAYS)
2. Understand current content
3. Identify precise change needed
4. Edit with old_string → new_string
5. Verify change (read again if uncertain)
6. Report what changed
```

**When**: Modifying any existing file
**Why**: Safety, precision, avoid breaking things

## Code Review Pattern

```
1. Run `git diff --name-only` to see changed files
2. Read each changed file completely
3. Run systematic checks:
   - Functionality correct?
   - Security issues?
   - Error handling present?
   - Code quality good?
   - Tests updated?
4. Provide structured feedback
5. Offer to fix issues found
```

**When**: Before commits, on request
**Why**: Catch issues early, improve quality

## Troubleshooting Pattern

```
1. User describes problem
2. Ask clarifying questions:
   - What error message?
   - What were you trying to do?
   - What have you tried?
3. Gather information:
   - Read relevant files
   - Check logs
   - Run diagnostic commands
4. Form hypothesis
5. Test hypothesis (try fix)
6. Verify fix worked
7. If not, iterate (new hypothesis)
8. Document solution in session log
```

**When**: Something's broken or not working
**Why**: Systematic, collaborative problem-solving

## Learning Capture Pattern

```
1. User states preference explicitly
   → Write to user_model.yaml immediately

2. User corrects AI behavior
   → Note in memory, if 2nd+ time → write to user_model

3. Successfully solve problem
   → Consider writing to approach_registry

4. Significant failure occurs
   → Write failure post-mortem

5. Monthly prompt
   → "Should we review your user model?"
```

**When**: Throughout work, whenever patterns emerge
**Why**: Progressive personalization

## Session Logging Pattern

```
1. Complete discrete work unit
2. Get current time (actual, not estimated)
3. Get hostname
4. Summarize:
   - What was accomplished
   - Files created/changed
   - Commits made
   - Next steps
5. Read today's log
6. Append new session entry
7. Update summary section
8. Optionally commit log to git
```

**When**: Natural breakpoints, user requests, end of session
**Why**: Cross-conversation memory, progress tracking

## Project Context Loading Pattern

```
1. User says "I'm working on [project]"
2. Read ~/ai-data/projects/[project]/PROJECT.md
3. Extract:
   - Goal and current phase
   - Next actions
   - Recent decisions
4. Read related session logs (grep for project name)
5. Confirm understanding:
   "You're in [phase], next step is [action]"
6. Ready to assist on project
```

**When**: Switching projects, starting work session
**Why**: Quick context acquisition, continuity

## Skill Creation Pattern

```
1. User describes repetitive task
2. Do it manually first (1-2 times)
3. Identify clear steps
4. Create SKILL.md structure:
   - Frontmatter (name, description, tools)
   - Purpose
   - When to use
   - Process (numbered steps)
   - Output format
   - Examples
5. Test skill execution
6. Refine based on results
7. Document edge cases
```

**When**: Task performed 3+ times, user requests
**Why**: Reusability, consistency, knowledge capture

## Multi-File Refactoring Pattern

```
1. Identify scope (which files affected)
2. Read all files in scope
3. Plan changes (explain to user)
4. User confirms approach
5. Make changes file by file:
   - Read
   - Edit
   - Verify
6. Run tests (if available)
7. Show summary of changes:
   - Files changed
   - What was changed in each
8. Offer git diff review
```

**When**: Renaming, restructuring, updating patterns
**Why**: Systematic, safe, verifiable

## Documentation Update Pattern

```
1. Code changes completed
2. Identify affected documentation
3. Read existing docs
4. Update docs to match code:
   - Keep consistent style
   - Update examples
   - Fix outdated info
5. Check for other outdated references
6. Commit docs with code
```

**When**: After code changes, proactively
**Why**: Keep docs in sync, maintain quality

## Command Execution Pattern

```
1. Understand what user wants
2. Construct appropriate command
3. If destructive:
   - Explain what it does
   - Warn about consequences
   - Wait for confirmation
4. Execute command
5. Capture output
6. Interpret results
7. Take follow-up action if needed
```

**When**: User requests system operations
**Why**: Safety, clarity, helpful results

## Approach Selection Pattern

```
1. User describes problem/goal
2. Check approach_registry for known solutions
3. If match found:
   - Suggest registered approach
   - Explain why it works
   - Offer to execute
4. If no match:
   - Suggest solution based on general knowledge
   - Note success/failure for future
5. After success:
   - Consider registering approach
```

**When**: User asks "how should I..." or describes problem
**Why**: Leverage past successes, build knowledge base

## Lesson Delivery Pattern

```
1. User starts lessons
2. Check ~/ai-data/learning/lesson_progress.yaml
3. Determine where to start:
   - Beginning (no progress)
   - Continue (in progress)
   - Specific lesson (user requests)
4. Read lesson content from skills/lessons/content/
5. Present lesson conversationally:
   - Not just reading verbatim
   - Encourage interaction
   - Answer questions
   - Demonstrate concepts
6. Check understanding at end
7. Update progress file
8. Suggest next lesson
```

**When**: User says "start lessons" or "lesson [N]"
**Why**: Interactive learning, progress tracking

## Git Workflow Pattern

```
1. Work completed
2. Run `git status` to see changes
3. Run `git diff` to review changes
4. If code review requested:
   - Use code-review skill
   - Fix any issues found
5. Stage specific files (not `git add .`)
6. Create commit with clear message
7. Push to remote
8. Update session log with commit info
```

**When**: Code changes ready to commit
**Why**: Clean commits, reviewable changes, safety

## Error Recovery Pattern

```
1. Error occurs
2. Read error message carefully
3. Explain what error means
4. Suggest 2-3 possible fixes
5. Try most likely fix
6. If works: document solution
7. If doesn't work: try next fix
8. Iterate until resolved or need user input
9. Document in failure post-mortem if significant
```

**When**: Errors encountered
**Why**: Fast recovery, learning from issues

## Summary for AI Systems

**These patterns are proven workflows**. Follow them for:
- Consistency
- Safety
- Quality
- User trust

**When patterns conflict with user instructions**:
- User instructions take precedence
- Explain why pattern suggests different approach
- Follow user's decision

**When patterns are insufficient**:
- Adapt pattern to situation
- Create new pattern if repeated
- Document what worked

**Goal**: Effective, safe, consistent assistance through proven workflows.
