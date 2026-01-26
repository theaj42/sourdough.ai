# Lesson 11: Learning Framework

You know how to work with AI effectively. Now let's talk about something unique to sourdough: **the learning framework**.

## What You'll Learn

- How AI can learn your patterns and preferences
- What the learning framework captures
- How learning improves AI assistance over time
- How to guide the learning process

## The Sourdough Metaphor Revisited

Remember from the README:

> "Sourdough starter is a living thing. You feed it, it grows, it develops its own character."

**The learning framework is how your AI assistant develops character.**

## What Gets Learned?

The learning framework captures:

**User model**: Patterns about how you work
**Approach registry**: What works for what problems
**Pending learnings**: Observations that might become rules
**Failures**: Post-mortems on what went wrong

This is stored in your personal data layer: `~/ai-data/learning/`

## How Learning Works

As we work together, I:
1. **Observe patterns** in how you work
2. **Note your preferences** (stated or implied)
3. **Track what works** for different problem types
4. **Document corrections** when you tell me I'm wrong
5. **Write observations** to learning files

**Important**: This happens automatically, in the background.

## User Model

The user model captures things like:

**Communication preferences**:
- Do you prefer brief answers or detailed explanations?
- Do you like me to ask first or just do it?
- What tone works best for you?

**Working patterns**:
- What time of day do you work?
- Do you prefer planning or diving in?
- How do you handle errors?

**Technical preferences**:
- Favorite tools and languages
- Coding style conventions
- Testing approaches

**Personal quirks**:
- Things you've corrected multiple times
- Strong preferences you've stated
- Things that annoy you

### Example User Model Entry

```yaml
communication:
  - "Prefers concise responses with option to dig deeper"
  - "Dislikes excessive enthusiasm or cheerleading language"
  - "Appreciates when I push back if approach seems wrong"

working_style:
  - "Values building over planning (avoid analysis paralysis)"
  - "Prefers organic evolution over upfront over-engineering"
  - "Likes to learn by doing rather than theoretical study"

technical:
  - "Uses bash extensively, prefers /bin/ls over aliased ls"
  - "Commits at logical breakpoints without being asked"
  - "Always reads file before editing (strong preference)"

corrections:
  - "2026-01-15: Corrected me for suggesting a complex solution when simple one existed"
  - "2026-01-18: Reminded me to use actual time, not estimates"
```

## Let's Check Your User Model

Want to see what I've learned about you so far?

**Say**: "Show me my user model" or "What have you learned about my preferences?"

If you don't have one yet, we can start one together.

---

## Approach Registry

The approach registry captures **what works** for different situations:

**Problem type**: "Setting up Python project"
**Approach**: "Use venv for isolation, requirements.txt for dependencies, create basic .gitignore"
**Why it works**: "Keeps dependencies isolated, makes it reproducible"

**Problem type**: "Debugging import errors"
**Approach**: "Check venv is activated → verify package installed → check Python path → check for typos"
**Why it works**: "Covers 95% of import issues in this order"

### Building Approach Knowledge

As we solve problems together:
- I note which approaches worked
- I note which approaches failed
- I build a library of solutions

Next time similar problem comes up, I know what to try first.

## Pending Learnings

Sometimes I notice a pattern that might be important:

**Observation**: "User consistently prefers X over Y when Z"
**Frequency**: "Seen 3 times in 5 days"
**Potential rule**: "Should I always suggest X in this context?"

These go in `pending_learnings.yaml` for review.

**You can review** and promote to CLAUDE.md if you agree.

## Failures (Post-Mortems)

When something goes significantly wrong, I write a post-mortem:

**What happened**: "Deleted wrong files because user request was ambiguous"
**Root cause**: "Didn't confirm which files before executing rm"
**Prevention**: "Always list files to be deleted and ask for confirmation first"

This ensures we don't repeat mistakes.

## How This Improves Assistance

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
- I make decisions aligned with your preferences
- I catch mistakes you typically make
- Collaboration feels seamless

## Your Role in Learning

**You help me learn** by:
- **Correcting me**: "No, I prefer X not Y"
- **Stating preferences**: "I always want to see a summary first"
- **Explaining context**: "In this project, we use approach X because..."
- **Reviewing learnings**: Periodically check what I've captured

**The more you guide, the better I learn.**

## Learning is Personal and Local

**Important**: Your learning data stays in `~/ai-data/learning/`

- It's just for you
- It's private
- It makes your AI assistant uniquely yours
- It doesn't affect anyone else's experience

This is why sourdough is personal—it learns *your* culture.

## Let's Practice

Try this:

1. **State a preference**: "I want you to always show me git diff before committing"
2. **I'll capture it**: Write to your user model
3. **Verify**: "Show me what you just added to my user model"
4. **Use it**: Next time we commit, I'll remember to show diff first

Try stating a preference now!

---

## Learning Templates

Sourdough provides templates for learning files:

**Location**: `~/sourdough.ai/learning/templates/`
**Files**:
- `user_model.template.yaml`
- `approach_entry.template.yaml`
- `failure_postmortem.template.md`

These show the structure—I'll fill them in based on our work.

## When I Write to Learning Files

I update learning files when:
- You state a preference explicitly
- You correct me (same correction 2+ times)
- We solve a problem effectively
- Something goes wrong and we document it
- I notice a strong pattern

**This happens automatically**—you don't have to ask.

## Reviewing and Refining

Periodically (monthly is good), review:

**User model**: "Does this still reflect my preferences?"
**Approach registry**: "Are these approaches still valid?"
**Pending learnings**: "Should any of these become permanent rules?"

Update or delete as needed—preferences change over time.

## Learning and CLAUDE.md

**CLAUDE.md**: Your explicit instructions (you write)
**Learning files**: Observations and patterns (AI writes)

**Together**: Create a complete picture of how you work

Eventually, strong patterns from learning might graduate to CLAUDE.md.

## Key Takeaways

- Learning framework captures patterns, preferences, and approaches
- I write observations automatically as we work
- User model personalizes communication and decision-making
- Approach registry builds solution library
- Failures document lessons learned
- Learning makes AI assistance better over time
- Your learning data is personal and private
- You guide learning by correcting and stating preferences

## Real-World Impact

Users report that after a few weeks:
- AI suggestions align better with their preferences
- Less clarification needed
- More productive collaboration
- Fewer mistakes and misunderstandings

**The AI truly becomes your AI.**

## The Sourdough Effect

This is why sourdough is a metaphor:

**Starter** (framework) is the same for everyone
**Culture** (your AI) develops unique character through:
- Your preferences (learning framework)
- Your instructions (CLAUDE.md)
- Your skills (personal skills directory)
- Your context (session logs)

**Result**: An AI assistant that works the way you work.

## Questions?

Common questions:
- "Can I edit learning files manually?" (Yes! They're just YAML/markdown)
- "What if I don't like something that was learned?" (Delete or edit it)
- "How much learning data accumulates?" (Not much—mostly structured observations)

---

**Ready for Lesson 12?** Next, we'll talk about managing multiple projects and keeping organized.

Say "next lesson" when ready.

---

**Progress**: Lesson 11 of 14 complete 🎉
