# Lesson 5: Understanding Context

You've learned to converse, read, create, and edit files. Now let's talk about something subtle but crucial: **context**.

## What You'll Learn

- How AI maintains context during conversations
- What context includes (and what it doesn't)
- How to help AI understand your situation better
- Why context matters for better assistance

---

## Part 1: What is Context?

Context is everything I know about our current conversation:
- What we've discussed
- Files I've read
- Changes I've made
- Your goals and preferences
- The current task

Think of it like working memory.

### Try This

Let's see context in action. We'll build it together.

**Tell me**: "I'm working on a backup script"

(This gives me context about what you're doing)

**[PAUSE - Wait for user to say they're working on something. Acknowledge it ("Got it - you're working on a backup script. What would you like to do with it?"), then continue.]**

---

## Part 2: Context in Action

Good! Now I know you're working on a backup script. Watch how context works.

### Try This

Now ask me a question without mentioning the backup script:

**Ask**: "What would be a good next step?"

Notice—you didn't say "for the backup script" but I'll know that's what you mean because of context!

**[PAUSE - Wait for user to ask about next steps. Answer in the context of the backup script they mentioned, then continue.]**

---

Perfect! See how that worked? I knew you meant "for the backup script" even though you didn't say it. That's context at work.

## Part 3: What Context Includes

In our current conversation, I have:
- **All messages**: Everything said so far
- **File contents**: Any files I've read
- **Code outputs**: Results from commands I ran
- **Your corrections**: When you tell me I'm wrong
- **Clarifications**: Additional details you provide

### Example: Context Building

Here's how context builds:

**You**: "Read the README file"
**I**: [reads ~/sourdough.ai/README.md]

**You**: "What's the sourdough metaphor?"
**I**: [I know you mean the README we just read]

**You**: "Summarize it"
**I**: [I know "it" means the README—context tells me]

See? Context makes conversation natural.

### Try This

Let's practice building context. Try this sequence:

1. "Read the getting-started.md file"
2. (After I read it) "What does that file recommend doing first?"
3. "Is that similar to what the README says?"

Notice how each question builds on previous context!

**[PAUSE - Wait for user to try this sequence. Respond to each question using the context we've built. Then continue.]**

---

## Part 4: What Context Doesn't Include

Excellent! Now here are important limitations:

**I don't have**:
- **Previous conversations**: I don't remember past sessions (unless logged)
- **Unread files**: I only know about files I've accessed
- **Your filesystem**: I don't automatically scan your system
- **Your thoughts**: I can't read your mind (be explicit!)
- **External changes**: If something changed outside our conversation, I don't know

This is why session logging is important (you'll learn about that in Lesson 10).

### Building Good Context

You help me build context by:

**Being explicit**: "I'm working on a Python project"
**Pointing to resources**: "Read the project README"
**Providing background**: "This script was working yesterday but broke today"
**Sharing goals**: "I want to automate my backup process"

The more context you provide, the better I can help.

### Try This

Let's practice providing context. Tell me about something you're actually working on (or want to work on):

- What is it?
- What are you trying to accomplish?
- Where are you stuck (if anywhere)?

Give me that context now!

**[PAUSE - Wait for user to provide context about their work. Acknowledge the context they've provided, ask any clarifying questions if needed, then continue.]**

---

## Part 5: When Context Gets Confused

Great context! Now let me explain when context can get confused:

**Long conversations**: Context can drift over time
**Topic changes**: "Actually, forget that, let's talk about something else"
**Ambiguous pronouns**: "Can you edit that?" (which thing?)

**Solution**: Reset context by being explicit again.

**Example**: "Let's start over. I'm trying to set up automated backups using a bash script."

This resets and clarifies what we're working on.

---

## Wrap-Up: You've Got This

Excellent work! You've learned how context works in AI conversations.

### Key Takeaways

✅ Context is everything I know about our current conversation
✅ Context includes messages, files read, and actions taken
✅ Context does NOT include previous sessions (unless logged)
✅ You build context by being explicit and providing information
✅ Good context = better assistance
✅ If context gets confused, just clarify
✅ Pronouns ("it", "that", "there") rely on context

### Practical Tips

**Good**: "Read the config.yaml file, then update the database port"
- I know which file to edit

**Confusing**: "Update the port"
- Which file? Which port? What value?

**Good**: "I'm getting an error in my Python script. Read error.log and help me debug"
- Clear context about the problem

**Confusing**: "Something's broken, fix it"
- What's broken? Where? How?

### Context is Cumulative

As we work together, context builds:
- **First conversation**: I know nothing about your project
- **After 10 minutes**: I know your goals, files, structure
- **After an hour**: I understand your patterns and preferences
- **After many sessions (with logging)**: I know your working style

This is why AI augmentation gets **better over time**.

### Questions?

Common questions:
- "How much can you remember?" (Everything in our current conversation, up to token limits)
- "Do you remember me from last time?" (Not unless we use session logging)
- "Can I see what context you have?" (Yes! Just ask "What do you know about my project?")

**Any other questions?** Ask away!

---

## Next Steps

**Ready for Lesson 6?**
Next, we'll learn about running commands—using bash or PowerShell through AI. This builds on everything you've learned so far.

**Want to experiment more first?**
Try building context with me on a real project you're working on. Say "continue lessons" whenever you're ready for Lesson 6.

---

**Progress**: Lesson 5 of 14 complete 🎉

*Remember: Good context makes everything else work better!*
