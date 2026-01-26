# Sourdough Training: Intermediate (Dexcom)

**Target Audience**: Dexcom employees with sourdough beginner training completed
**Duration**: 60-90 minutes
**Prerequisites**: Beginner training, 1-2 weeks of sourdough usage
**Outcome**: Advanced workflows, custom skills, team collaboration patterns

---

## Introduction

### What This Training Covers

You've completed the beginner training and have been using sourdough for a couple weeks. Now let's go deeper:

- **Advanced file operations** and multi-file workflows
- **Creating custom skills** for your team
- **Session management** across projects
- **Learning framework** customization
- **Team collaboration patterns**
- **Integration** with Dexcom tools (Jira, git, monitoring)
- **Production-ready practices**

### Assumptions

You're comfortable with:
- Basic AI conversations
- Reading and editing files
- Running commands through AI
- The responsibility model

If not, review beginner training first.

---

## Advanced File Operations

### Multi-File Workflows

AI can work with multiple files simultaneously:

**Scenario**: Refactoring across files

```
You: "Read all Python files in the src/ directory"
AI: [reads them all]
You: "Find everywhere we import the old logging module"
AI: [searches across files]
You: "Update all imports to use the new logging module"
AI: [edits multiple files]
You: "Show me a summary of what changed"
AI: [lists changes per file]
```

**Key insight**: Context spans multiple files.

### Pattern: Code Review Workflow

```
You: "Read the files in my current git diff"
AI: [reads changed files]
You: "Review these changes for:"
     - "Potential bugs"
     - "Security issues"
     - "Style consistency"
     - "Missing error handling"
AI: [provides structured review]
You: "Fix the issues you found"
AI: [makes corrections]
```

**This becomes a skill** (we'll create this later).

### Pattern: Documentation Generation

```
You: "Read all files in the api/ directory"
AI: [reads source files]
You: "Generate API documentation in OpenAPI format"
AI: [analyzes code, writes openapi.yaml]
You: "Add examples for each endpoint"
AI: [enhances with examples]
```

**Time saved**: Hours of manual work → 5 minutes.

### Pattern: Configuration Management

```
You: "Read dev.yaml, staging.yaml, and prod.yaml"
AI: [reads all three]
You: "Show me what's different between them"
AI: [compares and highlights differences]
You: "The database timeout should be consistent across all environments"
AI: [updates all three files]
```

**Prevents configuration drift** and errors.

---

## Creating Custom Skills

### Why Create Skills?

If you do something more than twice, it should be a skill.

**Benefits**:
- Consistency across executions
- Easy to share with team
- Self-documenting
- Faster than re-explaining

### Anatomy of a Skill (Deep Dive)

Every skill directory contains:

```
skills/my-skill/
├── SKILL.md          # Main instructions (required)
├── templates/        # Optional templates
├── config.yaml       # Optional config
└── scripts/          # Optional helper scripts
```

**SKILL.md structure**:

```markdown
---
name: skill-name
description: Brief description
allowed-tools: ["Read", "Write", "Bash", "WebFetch"]
---

# Skill Name

## Purpose
Why this skill exists.

## When to Use
- Trigger phrase 1
- Trigger phrase 2

## Process
### 1. First Step
Detailed instructions

### 2. Second Step
More instructions

### 3. Final Step
Completion criteria

## Output Format
What the user sees

## Examples
Show usage examples

## Notes
Additional context
```

### Exercise: Create a Code Review Skill

Let's create a production-ready skill together.

**Step 1: Create directory**
```bash
mkdir -p ~/ai-data/skills/code-review
```

**Step 2: Write SKILL.md**

I'll help you write a complete code review skill:

```markdown
---
name: code-review
description: Systematic code review for git changes
allowed-tools: ["Read", "Bash", "Grep"]
---

# Code Review Skill

## Purpose
Perform systematic code review on git changes before committing.

## When to Use
- Before committing code
- When reviewing teammate pull requests
- During refactoring
- When requested explicitly: "review my code"

## Process

### 1. Identify Changed Files
Run `git diff --name-only` to see what's changed.

If specific files are mentioned, review only those.

### 2. Read Changed Files
Read each modified file completely to understand context.

### 3. Run Systematic Checks

Check for:

**Functionality**:
- Does the logic make sense?
- Are edge cases handled?
- Are there potential bugs?

**Security**:
- SQL injection risks?
- Input validation present?
- Sensitive data handling appropriate?
- Authentication/authorization correct?

**Error Handling**:
- Try/catch blocks where needed?
- Meaningful error messages?
- Graceful degradation?

**Code Quality**:
- Consistent style?
- Clear variable names?
- Comments where needed (complex logic)?
- No dead code?

**Testing**:
- Are tests included/updated?
- Do tests cover edge cases?

**Dexcom-Specific**:
- Follows team coding standards?
- No PHI in logs or comments?
- Security best practices followed?

### 4. Provide Structured Feedback

Format output as:

```
# Code Review Summary

## Files Reviewed
- file1.py
- file2.py

## Issues Found

### Critical (must fix)
- [Description, location, fix suggestion]

### Important (should fix)
- [Description, location, fix suggestion]

### Minor (consider fixing)
- [Description, location, fix suggestion]

## Strengths
- [What's done well]

## Recommendation
✅ Approved with changes | ⚠️ Needs revision | ❌ Major concerns
```

### 5. Offer to Fix Issues
Ask if user wants help fixing identified issues.

## Examples

**Example 1: Review current changes**
```
User: "Review my code"
AI: [runs git diff, reads files, provides structured review]
```

**Example 2: Review specific file**
```
User: "Review changes in database.py"
AI: [reads file, reviews changes, provides feedback]
```

## Notes
- This is a systematic checklist, not a rubber stamp
- Push back if code quality is insufficient
- Suggest better approaches when appropriate
- Balance perfection vs. shipping
```

**Step 3: Test the skill**
```
You: "Use the code-review skill on my current changes"
```

**Step 4: Refine**
- Did it catch real issues?
- Is the output useful?
- Should it check for other things?
- Is it too strict or too lenient?

### Exercise: Create Your Own Skill

Pick something you do regularly at Dexcom:

**Ideas**:
- **jira-ticket**: Create well-formatted Jira tickets
- **incident-report**: Structure incident post-mortems
- **deploy-checklist**: Pre-deployment verification
- **meeting-notes**: Format meeting notes consistently
- **release-notes**: Generate release notes from git log

**Do it now**: Pick one and create it with AI assistance.

---

## Session Management Across Projects

### The Multi-Project Challenge

At Dexcom, you likely work on:
- Production incident response
- Feature development
- Security reviews
- Infrastructure improvements
- Compliance requirements

**Problem**: Context switching is expensive.

**Solution**: Structured project management with sourdough.

### Project Structure

```
~/ai-data/projects/
├── agentic-soc/                  # Your main project
│   ├── PROJECT.md
│   ├── incidents/
│   ├── playbooks/
│   └── notes.md
├── api-security-review/          # Security work
│   ├── PROJECT.md
│   ├── findings.md
│   └── remediation-tasks.md
├── compliance-automation/        # Compliance project
│   ├── PROJECT.md
│   └── scripts/
└── learning-kubernetes/          # Personal learning
    ├── PROJECT.md
    └── exercises/
```

### PROJECT.md Template

```markdown
# Project: [Name]

## Status
Active | On Hold | Completed

## Dexcom Context
- **Team**: [Your team]
- **Stakeholders**: [Who cares about this]
- **Jira Epic**: [EPIC-123]
- **Slack Channel**: #project-channel

## Goal
[What success looks like]

## Current Phase
[What you're working on now]

## Next Actions
- [ ] Immediate next step
- [ ] Follow-up task
- [ ] Blocked item (waiting on...)

## Resources
- [Confluence page]
- [GitHub repo]
- [Related documentation]

## Decisions
### 2026-01-15: Architecture Decision
**Context**: [Why we needed to decide]
**Options**: [What we considered]
**Decision**: [What we chose]
**Rationale**: [Why]

## Notes
[Running log of important information]
```

### Workflow: Switching Projects

**Start work on project**:
```
You: "I'm working on agentic-soc project now"
AI: [reads ~/ai-data/projects/agentic-soc/PROJECT.md]
AI: "You're in the playbook development phase. Next action: Implement phishing detection playbook."
```

**Update status**:
```
You: "Update project status - phishing playbook completed"
AI: [updates PROJECT.md with completion, identifies next action]
```

**Weekly review**:
```
You: "Review all my active projects"
AI: [reads all PROJECT.md files, summarizes status, flags items needing attention]
```

### Pattern: Daily Standup Generation

Create a skill that generates your standup:

```
You: "Generate my standup"
AI: [reads today's session log + active projects]
AI: "Yesterday: [accomplishments]
     Today: [plans from next actions]
     Blockers: [identified blocks]"
```

**Share this** with your team (the skill, not the personal data!).

---

## Learning Framework Customization

### Understanding Your User Model

Your user model captures patterns AI learns about you:

**Location**: `~/ai-data/learning/user_model.yaml`

**Check it**:
```
You: "Show me my user model"
```

**What's captured**:
- Communication preferences
- Working style
- Technical choices
- Corrections you've made
- Things that annoy you

### Guiding the Learning

**Be explicit about preferences**:

```
You: "I prefer you always show me git diff before committing"
AI: [writes to user model]
```

```
You: "When I ask you to fix bugs, always write tests first"
AI: [captures this pattern]
```

```
You: "I hate when you use overly enthusiastic language"
AI: [notes communication preference]
```

### Approach Registry

Captures solutions that work:

**Location**: `~/ai-data/learning/approach_registry/`

**Example entry** (`python-project-setup.yaml`):
```yaml
problem_type: "Setting up new Python project"
context: "Dexcom internal projects"
approach:
  - "Create virtual environment (python3 -m venv venv)"
  - "Create requirements.txt with pinned versions"
  - "Create .gitignore for Python"
  - "Create README.md with setup instructions"
  - "Create tests/ directory with __init__.py"
  - "Set up pre-commit hooks for linting"
last_used: "2026-01-20"
success_rate: "100% (used 5 times)"
notes: "This standardized setup works well across team"
```

**AI uses this**: Next time you set up a Python project, AI suggests this approach automatically.

### Creating Reusable Approaches

When you solve a problem well:

```
You: "Document this approach for future use"
AI: [creates approach registry entry]
```

**Share approaches** with your team by committing to team repo.

---

## Team Collaboration Patterns

### Sharing Skills

**Create team skills repo**:
```
~/dexcom-ai-skills/
├── jira-ticket/
├── incident-response/
├── security-scan-review/
└── deployment-checklist/
```

**Team members clone**:
```bash
git clone internal-repo/dexcom-ai-skills ~/dexcom-ai-skills
```

**Sourdough loads both**:
- Personal skills (`~/ai-data/skills/`)
- Team skills (`~/dexcom-ai-skills/`)

**Configuration** in `~/ai-data/CLAUDE.md`:
```markdown
## Additional Skill Locations
- `~/dexcom-ai-skills/` - Team shared skills
```

### Collaboration Workflow

**Creating a skill for the team**:
1. Build it in personal skills first
2. Test and refine
3. Move to team repo
4. Document usage
5. Share with team

**Using team skills**:
```
You: "What team skills are available?"
AI: [lists both personal and team skills]
You: "Use the incident-response skill"
AI: [runs team's standardized incident process]
```

### Pattern: Runbooks as Skills

Convert your team's runbooks to skills:

**Example**: Incident response runbook → incident-response skill

**Benefits**:
- Consistent execution
- Captures improvements
- Self-documenting
- Easy for new team members

**Try it**: Pick one of your team's runbooks and convert it.

---

## Integration with Dexcom Tools

### Jira Integration

While sourdough doesn't have direct Jira API integration (yet), you can:

**Create ticket templates** (as a skill):
```
You: "Use jira-ticket skill"
AI: [generates well-formatted ticket with all required fields]
You: [copy/paste into Jira]
```

**Track tickets locally**:
- Note Jira ticket numbers in PROJECT.md
- Link session work to tickets in logs
- Generate status updates for tickets

### Git Workflow Integration

**Pre-commit review**:
```
You: "Review changes before I commit"
AI: [runs code-review skill]
AI: [identifies issues]
You: "Fix those issues"
AI: [makes corrections]
You: "Show me the diff"
AI: [shows changes]
You: "Commit with message: 'fix: address security vulnerabilities in API auth'"
AI: [creates commit]
```

**Automated commit messages**:
```
You: "Generate a commit message for these changes"
AI: [analyzes diff, suggests conventional commit message]
```

### Log Analysis

**Pattern**: Analyzing application logs

```
You: "Read the last 1000 lines of app.log"
AI: [reads log file]
You: "Identify all ERROR entries"
AI: [grep for errors, shows results]
You: "What's the most common error?"
AI: [analyzes, identifies patterns]
You: "Suggest fixes for the top 3 errors"
AI: [provides troubleshooting suggestions]
```

**Create a skill** for your most common log analysis tasks.

### Monitoring Integration

**Pattern**: Alert investigation

```
You: "We got a high latency alert for the API. Investigate."
AI: "I'll help. Let me check:"
    1. "Read recent API logs" [checks logs/api.log]
    2. "Check database connections" [runs monitoring query]
    3. "Review recent deployments" [checks git log]
    4. [Provides analysis and suggestions]
```

**Capture this** as an incident-investigation skill.

---

## Production-Ready Practices

### Code Review Standards

**Before any commit to shared repos**:
1. Run code-review skill
2. Fix identified issues
3. Run tests
4. Review diff
5. Write good commit message
6. Push

**Enforce this** with a pre-commit script that reminds you to use the skill.

### Testing Workflow

**Pattern**: AI-assisted testing

```
You: "Write tests for the new authentication function"
AI: [reads function, writes comprehensive tests]
You: "Add edge case tests"
AI: [adds tests for edge cases]
You: "Run the tests"
AI: [runs pytest]
AI: "All tests pass ✓"
```

### Documentation Standards

**Keep docs in sync** with code:

```
You: "I just updated the API authentication. Update the docs too."
AI: [reads new code, updates documentation]
```

**Generate documentation**:
```
You: "Generate API documentation from these source files"
AI: [analyzes code, creates structured docs]
```

### Security Practices

**Never let AI**:
- Access production secrets directly
- Commit API keys to repos
- Process PHI
- Make production database changes without review

**Always**:
- Review security-sensitive changes carefully
- Use the code-review skill
- Follow Dexcom security policies
- Escalate concerns to Security team

---

## Advanced Patterns

### Multi-AI Consultation (Optional)

For complex decisions, consult multiple AI engines:

**Pattern**: Architecture decision

```
Terminal 1 (Claude): "Analyze this architecture design"
Terminal 2 (Gemini): "Review this architecture design"
```

Compare recommendations, make informed decision.

**Use tmux** for side-by-side consultation.

### Automated Code Refactoring

**Pattern**: Systematic refactoring

```
You: "Refactor the database.py file to use connection pooling"
AI: [reads file, understands structure]
AI: [implements connection pooling]
AI: [updates all function calls]
AI: [writes migration guide]
You: "Update tests for the new connection handling"
AI: [updates tests]
```

### Documentation-Driven Development

**Pattern**: Write docs first, then code

```
You: "Here's what I want to build: [description]"
AI: "Let me create the documentation first"
AI: [writes API docs, usage examples]
You: "Now implement this"
AI: [implements according to documentation]
```

**Result**: Code matches docs by design.

---

## Metrics and Improvement

### Track Your Usage

**Periodically review**:
- Most-used skills (which provide most value?)
- Time saved (rough estimates)
- Types of tasks AI helps with most
- Patterns in session logs

**Optimize accordingly**:
- Create skills for frequent tasks
- Refine approaches that work
- Document and share successes

### Team Metrics

If multiple team members use sourdough:
- Share skills that work well
- Compare approaches
- Learn from each other's configurations
- Build common patterns

---

## Next Steps

### Immediate Actions

1. **Create 2-3 custom skills** for your most common tasks
2. **Set up PROJECT.md files** for your active projects
3. **Customize your user model** with explicit preferences
4. **Share a skill** with a teammate

### This Week

1. **Use code-review skill** before all commits
2. **Generate standups** from session logs
3. **Document an approach** that worked well
4. **Refine** based on actual usage

### This Month

1. **Build team skill library** with 5-10 shared skills
2. **Train a colleague** on sourdough
3. **Contribute improvements** to shared configurations
4. **Establish team patterns** for common workflows

---

## Common Questions (Intermediate Level)

### "How do I balance AI assistance with my own skill development?"

**Use AI for**:
- Repetitive tasks (save time)
- Complex analysis (augment capability)
- Learning new technologies (accelerate understanding)

**Do manually when**:
- Learning something deeply
- Developing expertise
- Understanding is more important than speed

**AI augments, doesn't replace, your growth.**

### "Should I automate everything?"

No. Automate:
- ✅ Repetitive tasks
- ✅ Error-prone manual processes
- ✅ Time-consuming but low-value work

Don't automate:
- ❌ Things you do once
- ❌ Tasks where manual execution teaches you something
- ❌ Processes still being figured out

**Automate the routine to focus on the novel.**

### "How do I convince my team to adopt this?"

**Show, don't tell**:
- Demonstrate time savings
- Share skills that solve common pain points
- Help teammates with AI-assisted solutions
- Document success stories

**Start small**:
- One skill that saves everyone time
- One teammate who's interested
- One clear win

**Build from there.**

### "What's the ROI?"

**Quantifiable**:
- Time saved on routine tasks
- Bugs caught in review
- Documentation kept up to date
- Faster onboarding

**Harder to quantify but valuable**:
- Reduced context switching cost
- Better work-life balance (get more done in less time)
- Learning acceleration
- Reduced frustration with repetitive work

**Most users report 20-30% productivity improvement.**

---

## Resources

### Advanced Documentation

- **Skills deep dive**: `~/sourdough.ai/skills/README.md`
- **Learning framework**: `~/sourdough.ai/learning/README.md`
- **Session logging advanced**: `~/sourdough.ai/docs/session-logging.md`

### Example Skills

- **Fabric patterns**: `~/sourdough.ai/skills/fabric/`
- **Hello world**: `~/sourdough.ai/skills/examples/hello-world/`

### Dexcom-Specific

- Internal Dexcom sourdough repo (if established)
- Team shared skills
- Slack channels for collaboration

---

## Summary

**You learned**:
- Advanced multi-file workflows
- How to create production-ready custom skills
- Multi-project session management
- Learning framework customization
- Team collaboration patterns
- Dexcom tool integration
- Production-ready practices
- Advanced patterns and metrics

**You can now**:
- Build sophisticated workflows
- Create skills for your team
- Manage complex projects
- Collaborate effectively
- Integrate with existing tools
- Maintain production standards

**Next level**: You're now an advanced sourdough user. Share your knowledge, build team capabilities, and continue refining your workflows.

---

**Questions?** Share them with the team. Better yet, create a skill that helps others with the same question!

---

*For Dexcom Internal Use*
*Version 1.0 - January 2026*
