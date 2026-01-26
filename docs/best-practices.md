# Best Practices

Patterns that make AI collaboration effective.

## Communication

### Be Specific

**Less effective**: "Fix the script"
**Better**: "Fix the syntax error in backup.sh"
**Best**: "In backup.sh line 23, add the missing quote"

Specificity = better results.

### Provide Context

**Less effective**: "Update the config"
**Better**: "Change database port to 3000"
**Best**: "In config.yaml, change DB port from 5432 to 3000 because we're switching to local dev"

Context helps AI understand *why*, not just *what*.

### Iterate

Don't expect perfection first try:

```
You: "Create a backup script"
AI: [basic version]
You: "Add error handling"
AI: [adds error handling]
You: "Add progress logging"
AI: [adds logging]
```

Building incrementally works well.

## File Operations

### Always Version Control

Use git for:
- Code
- Documentation
- Configuration
- Session logs

**Benefits**:
- See what changed
- Undo mistakes
- Collaborate safely
- Track history

### Read Before Edit

This is critical. Always:
1. Read the file first
2. Make changes

**Why**: Avoids wrong assumptions, prevents breaking things.

### Test Changes

After AI makes changes:
- Run the code
- Check config syntax
- Review the diff
- Test edge cases

Don't assume it's perfect - verify.

## Workflow

### Use Skills for Repetition

If you do something 3+ times, create a skill:
- Document the process
- Reuse instead of re-explaining
- Share with others if useful

### Session Logging

Update logs at natural breakpoints:
- Completed a feature
- Made a decision
- End of work session

**Future you will thank present you.**

### Document Decisions

When you make significant choices:
- Note in session logs
- Update PROJECT.md
- Comment complex code
- Explain *why*, not just *what*

## Organization

### Keep Clean Structure

```
~/code/           # Code repositories
~/ai-data/        # Sourdough personal layer
~/Documents/      # Documents
~/Desktop/        # Temporary (clean regularly)
```

### Use Descriptive Names

**Good**: `backup-production-db.sh`
**Bad**: `script2.sh`

Names should explain what something is.

### Review Regularly

**Weekly**:
- What did I accomplish?
- What needs attention?
- Clean up temp files

**Monthly**:
- Review learning files
- Archive completed projects
- Update CLAUDE.md

## Safety

### Backups

Critical data needs backups:
- Time Machine / Windows Backup
- Git remotes for code
- Cloud storage for important files

### Confirm Destructive Operations

Before commands that:
- Delete files
- Modify system configs
- Change permissions

Ask AI: "Show me what will be deleted first"

### Review AI Changes

Quick checklist:
- Does this make sense?
- Did it change what I expected?
- Are there side effects?
- Would I approve in code review?

## Common Pitfalls to Avoid

### ❌ Vague Requests

"Make it better" → Be specific about what "better" means

### ❌ Assuming AI Knows Everything

"You know what I mean" → Explain context

### ❌ Not Checking Output

Accepting changes blindly → Review, test, verify

### ❌ Forgetting Context Limits

Expecting AI to remember last week → Use session logs

### ❌ Over-Complicating

Building elaborate systems before needed → Start simple

### ❌ No Version Control

Can't undo mistakes → Use git for everything

## Effective Patterns

### Pair Programming with AI

Work collaboratively:
1. You explain what to build
2. AI generates code structure
3. You review and refine
4. AI implements refinements
5. You test and identify issues
6. AI fixes issues

### AI-Assisted Code Review

Before committing:
1. "Review these changes"
2. AI checks for issues
3. You address feedback
4. AI confirms improvements

### Progressive Enhancement

Build incrementally:
1. Core functionality (make it work)
2. Error handling (make it robust)
3. Logging (make it debuggable)
4. Documentation (make it maintainable)
5. Tests (make it reliable)

## Real-World Wisdom

Experienced users say:

> "Specificity matters more than I thought"

> "Version control saved me so many times"

> "Test everything, even simple changes"

> "Session logs are incredibly valuable"

> "Skills pay dividends quickly"

> "The learning curve is shorter than expected"

## Your Evolution

**Week 1**: Learning basics, asking questions
**Week 2-4**: Getting comfortable, finding rhythm
**Month 2**: Natural collaboration, custom workflows
**Month 3+**: System feels like extension of thinking

Be patient with yourself. This takes time.

## Getting Help

**Stuck?**:
- Ask AI to explain
- Review relevant lessons
- Check documentation
- Try different approach
- Take a break

**Questions?**: Your AI assistant can help! Just ask.

---

*Work smarter. Build better. Learn faster.*
