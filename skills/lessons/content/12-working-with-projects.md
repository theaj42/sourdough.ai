# Lesson 12: Working with Projects

You understand the system deeply now. Let's talk about managing **multiple projects** effectively.

## What You'll Learn

- How to organize multiple projects
- Context switching strategies
- Tracking project status
- Using AI across different projects

## The Multi-Project Reality

Most people work on multiple things:
- Day job projects
- Side projects
- Learning experiments
- Personal automation
- Open source contributions

**Challenge**: Keeping context and making progress on all of them.

**Solution**: Structured organization + AI assistance.

## Project Organization

Sourdough suggests organizing projects in your data layer:

**Location**: `~/ai-data/projects/`

Each project gets a directory:
```
~/ai-data/projects/
├── website-redesign/
│   ├── PROJECT.md          # Overview, goals, status
│   ├── notes.md            # Running notes
│   └── tasks.md            # Project-specific tasks
├── backup-automation/
│   ├── PROJECT.md
│   └── scripts/
└── learning-rust/
    ├── PROJECT.md
    └── exercises/
```

## PROJECT.md Structure

Each project has a PROJECT.md file:

```markdown
# Project: Website Redesign

## Status
Active / On Hold / Completed

## Goal
Brief description of what this project is about and what success looks like.

## Current Phase
What you're working on right now.

## Next Actions
- Immediate next steps
- Things blocking progress

## Resources
- Links to documentation
- Related repos
- Key files

## Decisions
- Major decisions made and why
- Approaches tried and results

## Notes
Running log of important information.
```

## Let's Create a Project

**Say**: "Help me create a project for [something you're working on]"

We'll:
1. Create the directory structure
2. Write a PROJECT.md file
3. Set up initial organization

Try it now with a real project!

---

## Context Switching

When switching between projects, I need context. Here's the pattern:

**Start session**: "I want to work on the backup-automation project"
**I do**: Read `~/ai-data/projects/backup-automation/PROJECT.md`
**I know**: Goals, current phase, next actions, recent decisions
**Result**: I'm oriented and ready to help

This makes switching between projects seamless.

## Project Status Tracking

Keep PROJECT.md up to date with:

**Status changes**: Active → On Hold → Completed
**Phase updates**: "Design" → "Implementation" → "Testing"
**Next actions**: Update as you complete and identify new tasks
**Decisions**: Document why you chose approach X over Y

**AI can help**: "Update my backup-automation project status"

## Multi-Project Session Logs

Session logs capture work across projects:

```markdown
## Session - 14:00

**Focus**: Backup automation + Website redesign

**Backup Automation**:
- Implemented retry logic for failed backups
- Tested with simulated failures
- Next: Add email notifications

**Website Redesign**:
- Created wireframes for new homepage
- Decided on color palette
- Next: Start implementing header component
```

One log, multiple projects—see everything at a glance.

## The Project Manifest (Optional)

For many projects, consider a master list:

**Location**: `~/ai-data/projects/MANIFEST.md`

```markdown
# Project Manifest

## Active (3)
- **backup-automation**: Implementing retry logic
- **website-redesign**: Homepage wireframes done
- **learning-rust**: Working through chapter 6

## On Hold (2)
- **mobile-app**: Waiting for API access
- **blog-redesign**: Lower priority

## Completed (1)
- **dotfiles-setup**: Deployed and working
```

Quick overview of everything in flight.

## Project-Specific Skills

Create skills for project-specific workflows:

**Example**: `~/ai-data/skills/backup-test/`
- Skill that runs your backup testing workflow
- Project-specific but reusable

**Example**: `~/ai-data/skills/deploy-website/`
- Skill for deploying your website
- Encodes the deployment process

## Using AI Across Projects

I can help with:

**Project setup**: "Create a new Python project structure for [project]"
**Context loading**: "Read the PROJECT.md for backup-automation"
**Status updates**: "Update project status based on our work today"
**Cross-project insights**: "What projects haven't I touched in over a month?"

## Balancing Multiple Projects

**Good practices**:
- **Time-box**: "I'll work on this for 2 hours, then switch"
- **Complete phases**: Finish one phase before switching
- **Document before switching**: Update PROJECT.md so you can resume easily
- **Review regularly**: Weekly review of all active projects

**AI helps**: Maintain context across switches.

## Let's Practice

Try these:

1. "What projects am I currently working on?"
2. "Read the PROJECT.md for [your project]"
3. "Help me identify next actions for [project]"
4. "Update my [project] status"

This demonstrates project management with AI assistance.

---

## Project Archival

When a project is complete or abandoned:

**Option 1**: Move to `~/ai-data/projects/archive/`
**Option 2**: Mark status as "Completed" or "Abandoned" and keep in place
**Option 3**: Delete if truly no longer needed

Keep a record of what you accomplished.

## Projects and Git

Many projects are git repos. Connect them:

**Your code**: `~/code/my-project/` (the actual code repo)
**Your project data**: `~/ai-data/projects/my-project/` (notes, tasks, status)

**Link them** in PROJECT.md:
```markdown
## Repository
`~/code/my-project` - Main code repository
```

AI can work with both:
- Read/edit code in the repo
- Read/update project documentation in ai-data

## Cross-Project Patterns

After managing multiple projects, you'll notice patterns:

**Common setups**: Most Python projects need venv, requirements.txt, .gitignore
**Standard workflows**: Testing → Review → Commit → Deploy
**Recurring problems**: Same debugging approaches work across projects

**Capture these** in approach registry (Lesson 11) or skills (Lesson 9).

## Key Takeaways

- Organize projects in `~/ai-data/projects/`
- Each project has a PROJECT.md for context
- Session logs track work across multiple projects
- AI reads PROJECT.md to understand context when switching
- Update project status as you work
- Create project-specific skills for workflows
- Use manifest for high-level overview
- Document decisions to help future you

## Real-World Benefits

People using structured project organization report:
- Easier context switching
- Less cognitive load
- Better progress tracking
- Clear historical record
- Smoother collaboration (with AI and humans)

## Advanced: Project Templates

Create templates for common project types:

**Example**: Python project template
- Standard directory structure
- requirements.txt starter
- Basic README and PROJECT.md
- .gitignore

**Use**: "Create a new Python project using my template"

## Questions?

Common questions:
- "How many projects is too many?" (If you can't keep track, you have too many)
- "Should every idea be a project?" (No—use inbox for ideas, projects for committed work)
- "Can projects reference each other?" (Yes! Note dependencies in PROJECT.md)

---

**Ready for Lesson 13?** Next, we'll cover best practices—patterns that make AI collaboration effective.

Say "next lesson" when ready.

---

**Progress**: Lesson 12 of 14 complete 🎉
