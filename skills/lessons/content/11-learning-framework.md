# Lesson 11: Learning Framework

You know how to work with AI effectively. Now let's talk about something unique to sourdough: **the learning framework**.

## What You'll Learn

- How AI can learn your patterns and preferences
- What the learning framework captures
- How learning improves AI assistance over time
- How to guide the learning process

---

## Part 1: The Sourdough Metaphor Revisited

Remember from the README:

> "Sourdough starter is a living thing. You feed it, it grows, it develops its own character."

**The learning framework is how your AI assistant develops character.**

It's what makes your AI uniquely yours—adapted to your preferences, your workflows, your style.

### What Gets Learned?

The learning framework captures four types of knowledge:

**User model** (`user_model.yaml`):
- How you like to communicate
- Your working patterns
- Technical preferences
- Things you've corrected me about

**Approach registry** (`approach_registry/`):
- What works for what problem types
- Successful techniques
- Failed approaches to avoid

**Pending learnings** (`pending_learnings.yaml`):
- Observations that might become rules
- Patterns I've noticed
- Things to review

**Failures** (`failures/`):
- Post-mortems on what went wrong
- Root causes
- Prevention strategies

All of this lives in `~/ai-data/learning/`—your personal knowledge base.

## Part 2: How Learning Works

As we work together, I:
1. **Observe patterns** in how you work
2. **Note your preferences** (stated or implied)
3. **Track what works** for different situations
4. **Document corrections** when you tell me I'm wrong
5. **Write observations** to learning files

**Important**: This happens automatically in the background. You don't have to ask.

### Try This

Let's see if you have a user model yet. Ask me:

"Show me my user model" or "What have you learned about me?"

**Go ahead—try it.**

**[PAUSE - Wait for user to ask. Check if ~/ai-data/learning/user_model.yaml exists. If yes, read it and summarize key learnings. If no, explain that we can start building one together. Either way, then continue.]**

---

Good! Now you can see what the learning framework captures (or will capture as we work).

## Part 3: Example: User Model

Let me show you what a user model looks like:

```yaml
communication:
  - "Prefers concise responses with option to dig deeper"
  - "Dislikes excessive enthusiasm or cheerleading"
  - "Appreciates when I push back if approach seems wrong"

working_style:
  - "Values building over planning (avoid analysis paralysis)"
  - "Prefers organic evolution over upfront over-engineering"
  - "Likes to learn by doing rather than theory"

technical:
  - "Uses bash extensively, prefers /bin/ls over aliased ls"
  - "Always reads file before editing (strong preference)"
  - "Commits at logical breakpoints without being asked"

corrections:
  - "2026-01-15: Corrected me for over-complicating a simple task"
  - "2026-01-18: Reminded me to use actual time, not estimates"
```

These observations guide my behavior to match your preferences.

### Try This

Let's add a learning to your user model. Think of a preference you have about how I should work with you.

For example:
- "I prefer brief explanations unless I ask for details"
- "I always want to see git diff before committing"
- "I like when you explain your reasoning"

Tell me a preference, and I'll add it to your user model.

**Go ahead—what's a preference you have?**

**[PAUSE - Wait for user to state a preference. Acknowledge it, then write it to ~/ai-data/learning/user_model.yaml (create the file if it doesn't exist). Show them what you added and explain how this will guide future interactions. Then continue.]**

---

Excellent! I've captured that preference and will remember it going forward.

## Part 4: Approach Registry

The approach registry captures **what works** for different situations:

**Problem**: "Setting up Python project"
**Approach**: "Use venv for isolation, requirements.txt for dependencies, create .gitignore"
**Why it works**: "Keeps dependencies isolated, makes it reproducible"

**Problem**: "Debugging import errors"
**Approach**: "Check venv activated → verify package installed → check Python path → check for typos"
**Why it works**: "Covers 95% of import issues in order of likelihood"

As we solve problems together, I note which approaches worked. Next time a similar problem comes up, I know what to try first.

This builds a library of solutions specific to your context.

## Part 5: Pending Learnings

Sometimes I notice a pattern that might be important:

**Observation**: "User consistently prefers X over Y when Z"
**Frequency**: "Seen 3 times in 5 days"
**Potential rule**: "Should I always suggest X in this context?"

These go in `pending_learnings.yaml` for periodic review.

You can review them and decide:
- Promote to user model (make it a rule)
- Keep observing (need more data)
- Discard (not actually a pattern)

This prevents me from jumping to conclusions while still capturing potentially useful patterns.

## Part 6: Failures and Post-Mortems

When something goes significantly wrong, I write a post-mortem:

**What happened**: "Deleted wrong files because user request was ambiguous"
**Root cause**: "Didn't confirm which files before executing rm"
**Prevention**: "Always list files to be deleted and ask for confirmation first"

This ensures we don't repeat mistakes.

Failures are learning opportunities. Documenting them makes us better.

## Part 7: How This Improves Assistance Over Time

**First week**:
- I know general best practices
- I ask lots of clarifying questions
- I'm helpful but generic

**After a month**:
- I know your communication style
- I anticipate your preferences
- I suggest approaches you typically prefer
- I avoid things you don't like

**After several months**:
- I understand your workflow deeply
- I make decisions aligned with your style
- I catch mistakes you typically make
- Collaboration feels seamless

The AI truly becomes **your** AI.

---

## Wrap-Up: Growing Your Own Sourdough Culture

Great work! You now understand how the learning framework personalizes your AI assistant.

### Key Takeaways

✅ Learning framework captures patterns, preferences, and approaches
✅ I write observations automatically as we work
✅ User model personalizes communication and decisions
✅ Approach registry builds solution library
✅ Failures document lessons learned
✅ Learning makes AI assistance better over time
✅ Your learning data is personal and private
✅ You guide learning by correcting and stating preferences

### Your Role in Learning

**You help me learn** by:
- **Correcting me**: "No, I prefer X not Y"
- **Stating preferences**: "I always want to see a summary first"
- **Explaining context**: "In this project, we use X because..."
- **Reviewing learnings**: Periodically check what I've captured

The more you guide, the better I learn.

### The Sourdough Effect

This is why sourdough is a metaphor:

**Starter** (framework): Same for everyone
**Culture** (your AI): Develops unique character through:
- Your preferences (learning framework)
- Your instructions (CLAUDE.md)
- Your skills (personal skills directory)
- Your context (session logs)

**Result**: An AI assistant that works the way you work.

### Real-World Impact

Users report that after a few weeks:
- AI suggestions align better with preferences
- Less clarification needed
- More productive collaboration
- Fewer mistakes and misunderstandings

### Common Questions

Before we finish, let me answer common questions:

**"Can I edit learning files manually?"**
Yes! They're just YAML and markdown files. Edit away.

**"What if I don't like something that was learned?"**
Delete or edit it. You're in control.

**"How much data accumulates?"**
Not much—mostly structured observations. Learning files stay small.

**"Will this slow things down?"**
No. Writing to learning files is fast and happens in the background.

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 12?**
Next, we'll talk about managing multiple projects and keeping organized.

**Want to explore your learning files first?**
That's great! Try:
- Reading your user model
- Adding more preferences
- Understanding what's been captured

Say "continue lessons" whenever you're ready for Lesson 12.

---

**Progress**: Lesson 11 of 14 complete 🎉

*Remember: The learning framework is how AI becomes uniquely yours. Feed it, and it grows!*
