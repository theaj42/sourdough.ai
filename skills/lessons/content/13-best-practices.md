# Lesson 13: Best Practices

You've learned the system. Now let's talk about **patterns that make AI collaboration highly effective**.

## What You'll Learn

- Communication patterns that work best
- Common pitfalls to avoid
- Workflow optimizations
- How experienced users work with AI

## Communication Best Practices

### Be Specific

**Less effective**: "Fix the script"
**Better**: "Fix the syntax error in backup.sh"
**Best**: "In backup.sh line 23, fix the missing quote after the path variable"

The more specific, the better the result.

### Provide Context

**Less effective**: "Update the config"
**Better**: "Update database config to use localhost"
**Best**: "In config.yaml, change database host from remote.server.com to localhost because we're moving to local development"

Context helps me understand *why*, not just *what*.

### Ask for Explanations

**Good**: "Explain what this code does before I run it"
**Good**: "What are the risks of this command?"
**Good**: "Why did you choose this approach over [alternative]?"

Understanding > blind trust.

### Iterate

Don't expect perfection on first try:

**You**: "Create a backup script"
**I**: [create basic version]
**You**: "Add error handling"
**I**: [add error handling]
**You**: "Add logging"
**I**: [add logging]

Building incrementally works well.

## Workflow Best Practices

### Version Control Everything

**Use git** for:
- Code repositories
- Configuration files
- Documentation
- Session logs (sourdough does this)

**Benefits**:
- See what changed
- Undo mistakes easily
- Collaborate confidently
- Track history

### Read Before Edit

**Always**:
1. Read the file first
2. Then make changes

**Why**:
- Avoid wrong assumptions
- Make precise edits
- Understand context
- Prevent breaking things

This is the most important technical practice.

### Test Changes

After AI makes changes:
- **Run the code**: Does it work?
- **Check the config**: Valid syntax?
- **Review the diff**: What actually changed?
- **Test edge cases**: What if inputs are weird?

Don't assume it's perfect—verify.

### Document Decisions

When you make significant choices:
- Note it in session logs
- Update PROJECT.md
- Comment complex code
- Explain why, not just what

**Future you will thank present you.**

### Use Skills for Repetition

If you do something more than twice:
- Consider creating a skill
- Document the process
- Reuse instead of re-explaining

## Organizational Best Practices

### Keep a Clean Workspace

**Good structure**:
```
~/code/           # Code repositories
~/ai-data/        # Sourdough personal layer
~/Documents/      # Documents
~/Desktop/        # Temporary working area (clean regularly)
```

**Avoid**:
- Random files everywhere
- Unclear naming
- No organization system

### Use Descriptive Names

**Good**: `backup-production-db.sh`
**Bad**: `script2.sh`

**Good**: `2026-01-26-meeting-notes.md`
**Bad**: `notes.md`

Names should tell you what something is.

### Review Regularly

**Weekly**:
- Review session logs (what did I accomplish?)
- Check project statuses (what needs attention?)
- Clean up temporary files
- Update next actions

**Monthly**:
- Review learning files (still accurate?)
- Archive completed projects
- Refactor skills (are they still useful?)
- Update CLAUDE.md (preferences changed?)

## Safety Best Practices

### Backups

**Critical data should have backups:**
- Use Time Machine (Mac) or Windows Backup
- Important code → push to git remote
- Critical files → cloud storage
- Test restoration occasionally

### Confirm Destructive Operations

Before running commands that:
- Delete files
- Modify system configs
- Change permissions
- Drop databases

**Ask**: "Show me exactly what will be deleted first"

### Start Small in Production

Don't let AI:
- Touch production databases directly
- Deploy to live systems without review
- Modify critical infrastructure
- Access sensitive data

**Start in development, graduate to production when confident.**

### Review AI Changes

**Quick review checklist**:
- Does this make sense?
- Did it change what I expected?
- Are there unexpected side effects?
- Would I approve this in code review?

## Common Pitfalls to Avoid

### Pitfall 1: Vague Requests

**Problem**: "Make it better"
**Solution**: "Add error handling for network failures"

Be specific about what "better" means.

### Pitfall 2: Assuming AI Knows Everything

**Problem**: "You know what I mean"
**Solution**: Explain context, point to resources

AI knows a lot, but not your specific situation.

### Pitfall 3: Not Checking AI Output

**Problem**: Accept changes blindly
**Solution**: Review, test, verify

AI is good, not perfect.

### Pitfall 4: Forgetting Context Limits

**Problem**: Expecting AI to remember from last week
**Solution**: Use session logs, provide context

Without logs, each conversation starts fresh.

### Pitfall 5: Over-Complicating

**Problem**: Building elaborate systems before needed
**Solution**: Start simple, add complexity when necessary

Resist over-engineering.

### Pitfall 6: Not Using Version Control

**Problem**: Can't undo mistakes
**Solution**: Use git for everything

This is your safety net.

## Advanced Patterns

### Pair Programming with AI

Work collaboratively:
- **You**: Explain what you want to build
- **AI**: Generate code structure
- **You**: Review and refine
- **AI**: Implement refinements
- **You**: Test and identify issues
- **AI**: Fix issues

Iterative and collaborative.

### AI-Assisted Code Review

Before committing:
- **You**: "Review these changes for issues"
- **AI**: Check for bugs, style, potential problems
- **You**: Address feedback
- **AI**: Confirm improvements

Second pair of eyes.

### Progressive Enhancement

Build features incrementally:
1. **Core functionality** (make it work)
2. **Error handling** (make it robust)
3. **Logging** (make it debuggable)
4. **Documentation** (make it maintainable)
5. **Tests** (make it reliable)

Each step adds value.

### Templates and Scaffolding

Let AI generate starting points:
- Project structures
- Boilerplate code
- Configuration files
- Documentation templates

**Then customize to your needs.**

## Effective Communication Patterns

### The "Explain First" Pattern

**You**: "I want to build a backup system"
**AI**: "What would you like to back up? Where? How often?"
**You**: [provide specifics]
**AI**: "Here's my suggested approach: [explain]"
**You**: "Sounds good, let's do it"

Alignment before action.

### The "Show Me" Pattern

**You**: "Show me an example of [thing]"
**AI**: [provide example]
**You**: "OK, now do that for [my use case]"

Learn by example, then apply.

### The "Teach Me" Pattern

**You**: "Explain how [concept] works"
**AI**: [explain]
**You**: "Now help me implement that"

Understanding → Application.

## Key Takeaways

- Be specific in requests
- Provide context and explain why
- Always read before editing
- Test changes, don't assume perfection
- Use version control religiously
- Document decisions
- Create skills for repetitive tasks
- Review regularly (weekly, monthly)
- Start small, especially in production
- Iterate rather than expecting perfection
- Avoid common pitfalls

## Real-World Wisdom

Experienced AI collaboration users say:
- "Specificity matters more than I thought"
- "Version control saved me so many times"
- "Test everything, even simple changes"
- "Session logs are incredibly valuable"
- "Skills pay dividends quickly"
- "The learning curve is shorter than expected"

## Your Evolution

**Week 1**: Learning basics, asking lots of questions
**Week 2-4**: Getting comfortable, finding your rhythm
**Month 2**: Natural collaboration, creating custom workflows
**Month 3+**: System feels like extension of your thinking

**This takes time—be patient with yourself.**

## Questions?

Common questions:
- "How much should I rely on AI?" (Use it as much as helps, verify what it does)
- "When should I do things manually?" (When you need to learn something deeply)
- "What if AI and I disagree?" (You're in charge—trust your judgment)

---

**Ready for Lesson 14?** The final lesson covers next steps and where to go from here.

Say "next lesson" when ready.

---

**Progress**: Lesson 13 of 14 complete 🎉
