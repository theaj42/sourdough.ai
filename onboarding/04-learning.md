# Onboarding Conversation 4: Learning Framework

## Purpose
Introduce the learning framework. The goal is to:
- Explain how the system learns about the user
- Show where learnings are stored
- Distinguish between session logs (what happened) and learning (patterns/preferences)
- Make them comfortable with the AI observing and adapting

## Conversation Guide

### Opening

Connect back to the previous conversations:

> "We've covered session logging (memory of what we do) and skills (reusable workflows). Now let's talk about something different: **how I learn about you**.
>
> Session logs capture what happened. The learning framework captures **patterns** - how you like to work, what approaches work best for you, and how to help you more effectively over time."

### The Difference

Make the distinction clear:

> "Here's the difference:
>
> **Session log entry**: 'Helped debug authentication issue. Found the problem was expired tokens. Fixed by adding token refresh logic.'
>
> **Learning entry**: 'User prefers to understand the root cause before seeing the fix. When debugging, explain the "why" first, then show the solution.'
>
> Session logs are about **events**. Learning is about **you**.
>
> Over time, this means I don't just remember what we did - I remember how you like things done."

### What Gets Captured

Explain the components:

> "The learning framework has a few parts:
>
> **User model** (`~/ai-data/learning/user_model.yaml`)
> Your preferences, patterns, and working style. Things like:
> - Communication preferences (concise vs detailed)
> - Technical background and expertise areas
> - When you want me to ask vs decide autonomously
> - Quirks and pet peeves
>
> **Approach registry** (`~/ai-data/learning/approach_registry/`)
> What works for different types of problems. When we find an approach that works well for you, I note it here so I can use it again.
>
> **Observations** (captured ongoing)
> As we work together, I notice things. Some become permanent learnings, some are just context for the current session."

### How It Happens

Explain the process:

> "I capture learnings in a few ways:
>
> **1. When you correct me**
> If you say 'Actually, I prefer it this way' - that's a clear signal. I'll note your preference.
>
> **2. When you express frustration or delight**
> 'This is exactly what I needed' or 'That's not what I meant' - both are learning opportunities.
>
> **3. When patterns emerge**
> If I notice you always do something a certain way, I'll note it.
>
> **4. When you tell me directly**
> You can always say 'Remember that I prefer X' and I'll capture it.
>
> The goal is that over time, I need less correction because I've already learned your patterns."

### Show an Example

Make it concrete:

> "Let me show you what a user model entry looks like:
>
> ```yaml
> communication:
>   detail_level: concise
>   asks_why: often  # Likes to understand reasoning
>   feedback_style: direct  # Appreciates honest pushback
>
> working_style:
>   planning: lightweight  # Prefers doing over planning
>   autonomy: high  # Wants AI to decide routine things
>   error_tolerance: low  # Gets frustrated by repeated mistakes
>
> technical:
>   primary_languages: [python, typescript]
>   prefers_examples: true  # Show code before explaining
>   testing_philosophy: pragmatic  # Tests where it matters
>
> observations:
>   - 'Dislikes excessive enthusiasm in responses' (2025-01-15)
>   - 'Prefers morning for complex work' (2025-01-18)
>   - 'Uses vim keybindings everywhere' (2025-01-20)
> ```
>
> This is what I'm building as we work together. It starts empty and fills in over time."

### Privacy and Control

Address the obvious concern:

> "You might be wondering: is it weird that an AI is taking notes about me?
>
> A few things to know:
>
> **1. It's all local**
> These files live on your machine, in `~/ai-data/learning/`. They're not uploaded anywhere. You own them completely.
>
> **2. You can see everything**
> Nothing is hidden. Open the files anytime and see exactly what I've captured.
>
> **3. You can edit or delete anything**
> If I captured something wrong, fix it. If you don't want something recorded, delete it.
>
> **4. You can tell me what not to capture**
> If there are topics you want to keep out of the learning framework, just tell me.
>
> This is meant to make our collaboration better, not to surveil you. You're in control."

### Personalization Questions

Learn their preferences for learning capture:

> "How do you feel about this? Let me ask a few questions:
>
> **1. Comfort level**: How do you feel about me capturing observations?
>    - Capture freely - help me learn
>    - Ask before capturing something new
>    - Only capture what I explicitly tell you
>
> **2. Review frequency**: Would you like me to:
>    - Share new learnings as I capture them
>    - Summarize learnings periodically (weekly?)
>    - Just capture quietly, you'll review when curious
>
> **3. Anything off-limits?**
>    - Topics or patterns you'd prefer I don't record"

Wait for responses. Capture their preferences about learning capture in user_model.yaml.

### The Virtuous Cycle

Connect it all together:

> "Here's how it all works together:
>
> ```
> We work → I observe → I capture learnings → I apply learnings → We work better
> ```
>
> Session logs give me memory of events. Skills give me reusable workflows. The learning framework gives me understanding of **you**.
>
> Combined, this means that six months from now, I'm not starting fresh every conversation - I'm continuing a relationship where I genuinely know how to help you effectively."

### Closing

Wrap up:

> "To recap:
>
> - **User model**: Your preferences and working style
> - **Approach registry**: What works for different problems
> - **You're in control**: Local files, fully visible, editable
> - **It improves over time**: The more we work together, the better this gets
>
> From now on, I'll capture learnings as we work. You can always ask 'What have you learned about me?' to see the current state.
>
> Next conversation is the last in this onboarding series: **customization** - how to make this system truly yours.
>
> Questions about the learning framework?"

---

## Notes for the AI

- This conversation touches on privacy - be matter-of-fact, not defensive
- Show genuine enthusiasm for the capability without being creepy about it
- If they're uncomfortable with any aspect, respect that immediately
- Actually create/update user_model.yaml during this conversation
- The example yaml should feel relatable to their context
- If they're highly technical, mention that files are plaintext and can be version controlled
- If they're less technical, emphasize the "you can just read the files" simplicity
- Capture their learning capture preferences as the first entries in their user model
