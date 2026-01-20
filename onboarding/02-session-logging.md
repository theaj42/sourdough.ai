# Onboarding Conversation 2: Session Logging

## Purpose
Introduce session logging as the system's memory. The goal is to:
- Show why logging matters (continuity across conversations)
- Demonstrate what a session log looks like
- Ask about their preferences for what to capture
- Have them create their first log entry

## Conversation Guide

### Opening

Connect back to the previous conversation:

> "Last time we talked about what you're hoping to do with Sourdough. Now I want to show you how the system remembers things - because right now, every time we start a new conversation, I start fresh.
>
> **Session logging is how we fix that.**"

### The Problem

Make the problem concrete:

> "Here's what happens without logging: We have a great conversation. We figure something out. You close the terminal. Next time you open it, I have no idea what we discussed.
>
> That's frustrating for both of us. You have to re-explain context. I might suggest things we already tried.
>
> Session logs are simple text files that capture what we worked on. When you start a new session, I read the recent logs and pick up where we left off."

### Show an Example

Provide a concrete example:

> "Here's what a session log entry might look like:
>
> ```markdown
> ## 2025-01-20
>
> ### 14:30 - Project setup
> - Created new Python project for expense tracking
> - Set up virtual environment, installed pandas
> - Discussed CSV vs SQLite for storage, decided on SQLite for learning
>
> ### 16:00 - First feature
> - Built basic expense entry function
> - Added categories: food, transport, utilities, other
> - TODO: Add date validation
>
> ### Observations
> - User prefers seeing code examples before explanations
> - Likes to understand 'why' before 'how'
> ```
>
> Simple, right? Just notes about what we did and anything worth remembering."

### Where They Live

Explain the location:

> "Your session logs live in `~/ai-data/logs/sessions/`. One file per day, named by date.
>
> When you start a session, I'll read the recent logs to get context. When we finish something meaningful, I'll add to today's log.
>
> You can also read and edit these yourself - they're just markdown files."

### Personalization Questions

This is where we learn their preferences:

> "Different people want different things captured. Let me ask you a few questions:
>
> **1. Detail level**: Do you want logs to be:
>    - **Minimal** - Just topics and outcomes ('Set up project, chose SQLite')
>    - **Moderate** - Key decisions and reasoning ('Chose SQLite because learning > simplicity')
>    - **Detailed** - Step-by-step record ('Created venv, installed pandas, discussed options...')
>
> **2. What matters most to capture?**
>    - Decisions and why we made them?
>    - Technical details and commands?
>    - Ideas we had but didn't pursue yet?
>    - Observations about how you like to work?
>
> **3. When should I update the log?**
>    - After each meaningful chunk of work?
>    - At the end of a session when you say we're done?
>    - Only when you explicitly ask?"

Wait for responses. Capture preferences in user_model.yaml.

### Hands-On: First Log Entry

Have them experience it:

> "Let's create your first log entry right now.
>
> I'll create today's session log and add an entry for this onboarding conversation. You'll be able to see exactly what it looks like.
>
> [Create the log file at ~/ai-data/logs/sessions/YYYY-MM-DD.md]
>
> Take a look at `~/ai-data/logs/sessions/` - you should see today's file. Feel free to open it and see what I wrote.
>
> Does that format work for you? Want me to adjust anything?"

### The Bigger Picture

Connect to the broader system:

> "Session logs are the foundation, but they connect to other parts of Sourdough:
>
> - **Learning framework**: Patterns I notice about you get captured in `~/ai-data/learning/`
> - **Skills**: Workflows we develop together can become reusable skills
> - **Rolling summary**: Over time, daily logs get condensed into a summary so I don't lose old context
>
> We'll explore those in later conversations. For now, just know that logging is how everything starts."

### Closing

Wrap up and set expectations:

> "From now on, I'll maintain session logs based on the preferences you shared.
>
> A few things to know:
> - You can always ask 'What did we work on yesterday?' or 'What's in my recent logs?'
> - If I capture something you'd rather not keep, just tell me and I'll remove it
> - These are your files - edit them directly anytime you want
>
> Next time, I'll show you how to create a **skill** - a reusable workflow for something you do often.
>
> Any questions about session logging?"

---

## Notes for the AI

- Actually create the log file during this conversation - make it real
- The first log entry should document this onboarding conversation
- Capture their logging preferences in user_model.yaml immediately
- If they seem overwhelmed, simplify - "I'll just keep moderate notes, we can adjust later"
- If they want to customize heavily, let them - power users exist
- The "just ask" habit reinforcement: "You can always ask me to show you recent logs"
