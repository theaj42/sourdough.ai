# Learning Framework

Structure for your AI to learn and adapt to you over time.

## Philosophy

Your AI assistant should get better at helping you the more you work together. This framework provides the structure for that learning.

## Components

### User Model (`user_model.yaml`)
Observations about how you work:
- Communication preferences
- Decision-making patterns
- Work style
- Technical preferences
- Pet peeves

### Approach Registry (`approach_registry/`)
What works for what problems:
- Techniques that succeeded
- Patterns to follow
- Context for when to use each

### Pending Learnings (`pending_learnings.yaml`)
Observations that might warrant updates to CLAUDE.md:
- Strong patterns noticed
- Potential new rules
- Things to review periodically

### Failures (`failures/`)
Post-mortems to prevent repeating mistakes:
- What went wrong
- Root cause
- Prevention strategy

## How It Works

1. **Framework provides templates** (in `learning/templates/`)
2. **Your data lives in your personal layer** (`~/ai-data/learning/`)
3. **AI writes observations autonomously** during sessions
4. **You review periodically** and promote learnings to CLAUDE.md

## Templates

See `templates/` for starter files:
- `user_model_template.yaml`
- `approach_template.yaml`
- `failure_template.yaml`
- `pending_learning_template.yaml`

Copy these to your personal layer and let your AI fill them in over time.

## The Feedback Loop

```
Work together → AI observes patterns → Writes to learning files
     ↑                                          ↓
Better assistance ← AI reads learnings ← You review/refine
```

This is how the sourdough culture develops its unique character.
