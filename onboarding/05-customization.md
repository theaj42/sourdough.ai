# Onboarding Conversation 5: Customization

## Purpose
This is the final onboarding conversation. The goal is to:
- Show how to customize every part of the system
- Introduce CLAUDE.md as the central configuration
- Explain the framework vs personal data separation
- Send them off ready to make it their own

## Conversation Guide

### Opening

Mark the milestone:

> "This is the last conversation in the onboarding series. You've learned:
> - How to work with me naturally (just ask)
> - Session logging (memory across conversations)
> - Skills (reusable workflows)
> - Learning framework (how I adapt to you)
>
> Now let's talk about **making this system yours**. Everything in Sourdough is customizable - and I mean everything."

### The Two Layers

Explain the architecture:

> "Sourdough has two layers:
>
> **Framework** (`~/sourdough.ai/`)
> The structure, templates, and examples. This is the 'starter culture' - you can update it from git to get improvements, and it doesn't contain any of your personal data.
>
> **Your data** (`~/ai-data/`)
> Everything personal: your session logs, your learnings, your custom skills, your configuration. This is yours alone.
>
> This separation means:
> - You can update Sourdough without losing your customizations
> - You can back up your personal data separately
> - You can move your data to a new machine and pick up where you left off
> - You could even share the framework publicly without exposing personal info"

### CLAUDE.md: Your Central Configuration

Introduce the key file:

> "The most important file for customization is `~/ai-data/CLAUDE.md`. This is where Claude Code (and similar tools) look for instructions about how to work with you.
>
> The installer created a starter version for you. Let's look at what you can configure:
>
> **About Me section**
> Tell me about yourself - your role, technical background, current projects. The more context I have, the better I can help.
>
> **Working Preferences**
> How you like to communicate, how much autonomy I should have, how to handle errors.
>
> **Session Logging preferences**
> What detail level, when to update logs, what to capture.
>
> **Learning preferences**
> How aggressively to capture learnings, what's off-limits.
>
> **Current Focus**
> What you're actively working on - helps me prioritize context.
>
> **Custom Instructions**
> Any specific rules for your workflow - tools you use, conventions to follow, things to avoid."

### Show the Config File

If they haven't customized it yet:

> "Let's take a look at your CLAUDE.md. Open `~/ai-data/CLAUDE.md` in your editor.
>
> See the placeholder sections? Those are meant to be filled in with your actual context.
>
> Want to do that now? We could go section by section and I'll help you fill it out based on what I've learned about you from these conversations.
>
> Or if you prefer, you can fill it out on your own later - it's just markdown."

If they want to customize now:
- Walk through each section
- Use what you've learned from previous conversations
- Capture their input as you go
- This is a great opportunity to solidify the relationship

### Custom Skills

Remind them of the skill system:

> "Remember, you can create custom skills anytime. Your personal skills go in `~/ai-data/skills/`.
>
> Common customizations:
> - A `/standup` skill that generates a daily standup summary
> - A `/review` skill that runs code review with your preferred checklist
> - A `/deploy` skill that handles your deployment workflow
> - A `/notes` skill that organizes information in your preferred format
>
> Whenever you find yourself explaining the same process to me twice, consider: should this be a skill?"

### Learning Framework Customization

Mention the adjustable parts:

> "The learning framework is also customizable:
>
> **User model structure**
> The default template covers common patterns, but you can add your own categories. If you have domain-specific preferences (like 'always use type hints' or 'prefer functional style'), add a section for those.
>
> **Capture triggers**
> You've already told me how aggressively to capture learnings. You can adjust this anytime.
>
> **Review cadence**
> Some people like to review learnings monthly to clean up and consolidate. Others never look at them. Up to you."

### Advanced: Directory Structure

For power users:

> "If you want to go deeper, here's the full structure you can customize:
>
> ```
> ~/ai-data/
> ├── CLAUDE.md           # Central config (most important)
> ├── config/             # Additional config files
> ├── skills/             # Your custom skills
> ├── learning/           # User model and observations
> │   ├── user_model.yaml
> │   └── approach_registry/
> ├── logs/
> │   └── sessions/       # Daily session logs
> ├── memory/             # Long-term memory storage
> ├── inbox/              # Captured items for processing
> └── projects/           # Project-specific context
> ```
>
> You can add folders, reorganize, or create entirely new structures. The framework provides templates, but you're not locked into them."

### The Philosophy

Reinforce the core idea:

> "Here's the philosophy behind all this customization:
>
> **Sourdough is a structure, not a product.**
>
> I'm not trying to force you into a specific workflow. I'm giving you building blocks and sensible defaults. How you arrange them is up to you.
>
> Some people keep it minimal - just session logs and a basic CLAUDE.md. Others build elaborate systems with custom skills for every workflow. Both are valid.
>
> The goal is that after using this for a few months, the system genuinely feels like **yours** - tailored to how you think and work."

### What's Next

Set them up for ongoing use:

> "You're done with onboarding. Here's how to move forward:
>
> **Daily habit**
> - `/start` when you begin a session
> - Work naturally, just ask for what you need
> - `/update` when you finish (or I'll remind you)
>
> **As patterns emerge**
> - Notice repetitive tasks → create skills
> - Notice preferences → let me capture them (or add to CLAUDE.md)
> - Notice friction → tell me and we'll adjust
>
> **When you want to go deeper**
> - Check `~/sourdough.ai/docs/` for detailed documentation
> - Look at `~/sourdough.ai/examples/` for inspiration
> - Or just ask me - I can explain any part of the system
>
> **Getting updates**
> - Occasionally `cd ~/sourdough.ai && git pull` to get improvements
> - Your personal data is separate, so updates won't affect your customizations"

### Closing

End with encouragement:

> "That's it. You have a fully functional AI assistant framework.
>
> A few final thoughts:
>
> **Start simple.** You don't need to customize everything today. Use it, notice what's working and what isn't, adjust gradually.
>
> **Ask for help.** If something isn't working the way you want, tell me. We can fix it together.
>
> **Make it weird.** The best personal systems are a little idiosyncratic. Don't try to follow some 'correct' way - make it fit your brain.
>
> Welcome to Sourdough. Let's build something together.
>
> What would you like to work on first?"

---

## Notes for the AI

- This is the graduation moment - make it feel like an accomplishment
- If they want to customize CLAUDE.md now, actually do it together
- If they seem overwhelmed, emphasize "start simple, adjust over time"
- If they're excited, match their energy and dive into customization
- The "make it weird" comment is intentional - encourage personalization
- End with an open question that transitions into actual work
- After this conversation, they're ready for normal sessions
- Update session log with completion of onboarding
