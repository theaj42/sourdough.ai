# Lesson 13: Best Practices

You've learned the system. Now let's talk about **patterns that make AI collaboration highly effective**.

## What You'll Learn

- Communication patterns that work best
- Common pitfalls to avoid
- Workflow optimizations
- How experienced users work with AI

---

## Part 1: Communication Best Practices

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

### Iterate, Don't Expect Perfection

Don't expect perfection on the first try. Building incrementally works well:

**You**: "Create a backup script"
**I**: [create basic version]
**You**: "Add error handling"
**I**: [add error handling]
**You**: "Add logging"
**I**: [add logging]

Each iteration improves the result.

### Try This

Let's practice specific communication. Think of something you want me to help with, then tell me using the "Best" pattern: specific, with context, explaining why.

For example:
- "Read the README.md file in my sourdough.ai directory and explain what the installation process involves, because I want to understand it before recommending it to someone"

**Go ahead—give me a specific, contextual request.**

**[PAUSE - Wait for user to make a request. Acknowledge how well-formed (or not) their request is. If it's vague, help them make it more specific by asking clarifying questions. If it's specific, compliment that and then fulfill the request. Then continue.]**

---

Good! See how specificity and context help me help you better?

## Part 2: Workflow Best Practices

### 1. Read Before Edit

**Always**:
1. Read the file first
2. Then make changes

**Why**:
- Avoid wrong assumptions
- Make precise edits
- Understand context
- Prevent breaking things

This is the **single most important technical practice**.

### 2. Use Version Control

**Use git** for everything:
- Code repositories
- Configuration files
- Documentation
- Session logs

**Benefits**:
- See what changed (`git diff`)
- Undo mistakes easily (`git revert`)
- Track history
- Collaborate confidently

**If you only follow one practice, make it this one.**

### 3. Test Changes

After I make changes:
- Run the code—does it work?
- Check the config—valid syntax?
- Review the diff—what actually changed?
- Test edge cases—what if inputs are weird?

Don't assume perfection. Verify.

### 4. Document Decisions

When you make significant choices:
- Note in session logs
- Update PROJECT.md
- Comment complex code
- Explain why, not just what

Future you will thank present you.

## Part 3: Common Pitfalls to Avoid

### Pitfall 1: Vague Requests

**Problem**: "Make it better"
**Solution**: "Add error handling for network failures"

Be specific about what "better" means.

### Pitfall 2: Not Checking Output

**Problem**: Accept changes blindly
**Solution**: Review, test, verify

I'm good, not perfect.

### Pitfall 3: Forgetting Context Limits

**Problem**: Expecting me to remember from last week
**Solution**: Use session logs, provide context

Without logs, each conversation starts fresh.

### Pitfall 4: Not Using Version Control

**Problem**: Can't undo mistakes
**Solution**: Use git for everything

This is your safety net.

### Pitfall 5: Over-Complicating

**Problem**: Building elaborate systems before needed
**Solution**: Start simple, add complexity when necessary

Resist over-engineering.

### Try This

I'm going to describe a scenario with a pitfall. Tell me what the problem is and how to avoid it.

**Scenario**: "You tell me 'update that config' without specifying which config file, what to update, or what the new values should be."

What's wrong with this request? How would you improve it?

**Go ahead—tell me your thoughts.**

**[PAUSE - Wait for user to identify the issues: vague reference ("that config"), no specifics about what to change. Then affirm their thinking and explain the better version would be: "Update the database.yaml config file in the config/ directory, changing the 'host' value from 'remote.db' to 'localhost'" Then continue.]**

---

Exactly! Specificity prevents misunderstandings and wasted effort.

## Part 4: Advanced Patterns

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
- **AI**: Check for bugs, style, problems
- **You**: Address feedback
- **AI**: Confirm improvements

Second pair of eyes.

### Progressive Enhancement

Build features incrementally:
1. Core functionality (make it work)
2. Error handling (make it robust)
3. Logging (make it debuggable)
4. Documentation (make it maintainable)
5. Tests (make it reliable)

Each step adds value.

## Part 5: The Balanced Mindset

**Balance specificity with flexibility**:
- Be specific about goals
- Be flexible about approach

**Balance trust with verification**:
- Trust AI to help
- Verify it did what you expected

**Balance automation with understanding**:
- Automate repetitive tasks
- Understand important concepts

---

## Wrap-Up: Patterns for Success

Great work! You now know the patterns that make AI collaboration effective.

### Key Takeaways

✅ Be specific in requests—provide context and explain why
✅ Always read before editing (prevents mistakes)
✅ Use version control religiously (your safety net)
✅ Test changes, don't assume perfection
✅ Document decisions for future you
✅ Avoid vague requests and assumptions
✅ Iterate toward perfection, don't expect it immediately
✅ Balance specificity, trust, and understanding

### Your Evolution

**Week 1**: Learning basics, finding your rhythm
**Week 2-4**: Getting comfortable, establishing patterns
**Month 2**: Natural collaboration, custom workflows
**Month 3+**: System feels like extension of your thinking

This takes time. Be patient with yourself.

### Real-World Wisdom

Experienced users say:
- "Specificity matters more than I thought"
- "Version control saved me countless times"
- "Test everything, even simple changes"
- "Session logs are incredibly valuable"
- "The learning curve is shorter than expected"

### Common Questions

Before we finish, let me answer common questions:

**"How much should I rely on AI?"**
Use it as much as helps, but verify what it does. You're the final decision-maker.

**"When should I do things manually?"**
When you need to learn something deeply, or when automation would take longer than doing it.

**"What if AI and I disagree?"**
You're in charge. Trust your judgment. But consider AI's perspective—it might see something you don't.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 14?**
The final lesson covers next steps and where to go from here. You're almost done!

**Want to practice best practices first?**
That's great! Apply what you've learned:
- Make specific requests
- Use version control
- Test changes
- Document decisions

Say "continue lessons" whenever you're ready for the final lesson.

---

**Progress**: Lesson 13 of 14 complete 🎉

*Remember: Best practices aren't rules to memorize—they're patterns you'll internalize through use!*
