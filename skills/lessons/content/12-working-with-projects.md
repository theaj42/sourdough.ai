# Lesson 12: Working with Projects

You understand the system deeply now. Let's talk about managing **multiple projects** effectively.

## What You'll Learn

- How to organize multiple projects
- Context switching strategies
- Tracking project status
- Using AI across different projects

---

## Part 1: The Multi-Project Reality

Most people work on multiple things:
- Day job projects
- Side projects
- Learning experiments
- Personal automation
- Open source contributions

**Challenge**: Keeping context and making progress on all of them.

**Solution**: Structured organization + AI assistance.

### Project Organization

Sourdough suggests organizing projects in your data layer:

**Location**: `~/ai-data/projects/`

Each project gets its own directory:
```
~/ai-data/projects/
├── website-redesign/
│   ├── PROJECT.md          # Overview, goals, status
│   ├── notes.md            # Running notes
│   └── tasks.md            # Project tasks
├── backup-automation/
│   ├── PROJECT.md
│   └── scripts/
└── learning-rust/
    ├── PROJECT.md
    └── exercises/
```

### Try This

Let's see what projects you have (if any). Ask me:

"What projects do I have?" or "List my projects"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Check ~/ai-data/projects/ directory. If projects exist, list them and briefly describe what you see. If none exist, explain that we can create one together. Then continue.]**

---

Good! Now you know what you're working on (or that we can start organizing projects).

## Part 2: PROJECT.md Structure

Each project has a PROJECT.md file that provides context:

```markdown
# Project: Website Redesign

## Status
Active / On Hold / Completed

## Goal
What success looks like for this project.

## Current Phase
What you're working on right now.

## Next Actions
- Immediate next steps
- Blockers

## Resources
- Links to documentation
- Related repos
- Key files

## Decisions
- Major decisions and why
- Approaches tried

## Notes
Running log of important info.
```

This file is context for me. When you switch projects, I read this and immediately know: goals, status, next actions, decisions.

### Try This

Let's create a project for something you're working on (or want to work on). Ask me:

"Help me create a project for [something you're working on]"

For example:
- "Help me create a project for learning Python"
- "Help me create a project for my blog"
- "Help me create a project for home automation"

**Go ahead—what project should we create?**

**[PAUSE - Wait for user to describe a project. Work with them to: 1) Create the directory structure in ~/ai-data/projects/, 2) Create a well-structured PROJECT.md file with all sections filled out based on what they tell you, 3) Save it and show them the result. Be thorough and ask questions to fill out sections meaningfully. Then continue.]**

---

Excellent! You now have a project with proper organization.

## Part 3: Context Switching with AI

When you switch between projects, I need context. Here's the pattern:

**You say**: "I want to work on the backup-automation project"

**I do**:
1. Read `~/ai-data/projects/backup-automation/PROJECT.md`
2. Understand: goals, current phase, next actions, decisions
3. I'm now oriented and ready to help

**Result**: Seamless context switching.

You don't have to re-explain everything—the PROJECT.md does that for you.

### Try This

Let's practice context switching. If you have multiple projects, ask me to switch to one:

"Let's work on [project name]"

If you only have one project, that's fine—we'll practice this concept anyway.

**Go ahead—try it.**

**[PAUSE - Wait for user to ask about a project. Read the PROJECT.md file (or the one we just created), summarize what you learned: goals, current status, next actions. Then ask them what they want to work on for this project. Be enthusiastic about jumping into their work. Then continue.]**

---

See how quickly I got oriented? That's the power of structured project documentation.

## Part 4: Multi-Project Session Logs

Your session logs can capture work across multiple projects:

```markdown
## Session - 14:00

**Focus**: Backup automation + Website redesign

**Backup Automation**:
- Implemented retry logic
- Tested with failures
- Next: Add notifications

**Website Redesign**:
- Created homepage wireframes
- Decided on color palette
- Next: Implement header

```

One log entry, multiple projects—you see everything at a glance.

## Part 5: The Project Manifest (Optional)

For many projects, consider a master list:

**File**: `~/ai-data/projects/MANIFEST.md`

```markdown
# Project Manifest

## Active (3)
- **backup-automation**: Implementing retry logic
- **website-redesign**: Homepage wireframes complete
- **learning-rust**: Working through chapter 6

## On Hold (2)
- **mobile-app**: Waiting for API access
- **blog-redesign**: Lower priority

## Completed (1)
- **dotfiles-setup**: Deployed and working
```

Quick overview of everything in flight.

---

## Wrap-Up: Organized Multi-Project Work

Great work! You now know how to manage multiple projects effectively.

### Key Takeaways

✅ Organize projects in ~/ai-data/projects/
✅ Each project has PROJECT.md for context
✅ I read PROJECT.md when switching projects
✅ Session logs track work across projects
✅ Update project status as you work
✅ Optional manifest provides overview

### Real-World Benefits

People using structured project organization report:
- Easier context switching
- Less cognitive load
- Better progress tracking
- Clear historical record
- Smoother collaboration

### Project Management Workflow

**Create project**:
- Make directory and PROJECT.md
- Fill in goals, status, resources

**Work on project**:
- Tell me which project
- I read PROJECT.md for context
- We work together

**Switch projects**:
- Tell me the new project
- I read its PROJECT.md
- Seamless transition

**Update status**:
- As phase changes
- When completing milestones
- When decisions are made

### Common Questions

Before we finish, let me answer common questions:

**"How many projects is too many?"**
If you can't keep track, you have too many. Most people handle 3-5 active projects well.

**"Should every idea be a project?"**
No. Use inbox for ideas, projects for committed work.

**"Can projects reference each other?"**
Yes! Note dependencies in PROJECT.md.

**"What about actual code repos?"**
Keep code in ~/code/ or wherever you want. The PROJECT.md in ~/ai-data/projects/ is just documentation and context—link to the code repo in the Resources section.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 13?**
Next, we'll cover best practices—patterns that make AI collaboration highly effective.

**Want to set up more projects first?**
That's great! Organize your work while the pattern is fresh.

Say "continue lessons" whenever you're ready for Lesson 13.

---

**Progress**: Lesson 12 of 14 complete 🎉

*Remember: Good organization multiplies AI effectiveness. Structure enables speed!*
