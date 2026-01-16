---
name: fabric-summarize-meeting
description: Summarize meeting transcripts or notes into actionable format. Invoke when user provides meeting transcripts, notes, or wants actionable meeting summaries.
allowed-tools: ["Read", "WebFetch", "Bash", "Write"]
---

# Summarize Meeting

Extract key information from meeting content (transcript, notes, recording) into an actionable summary with decisions and action items.

## Input Sources

User provides one of:
- **Pasted text**: Meeting notes or transcript directly in message
- **File path**: Local file containing meeting notes
- **URL**: Link to meeting transcript or recording (if accessible)
- **Clipboard**: "Summarize meeting from clipboard"

## Process

### 1. Extract Content

**From clipboard:**
```bash
pbpaste > /tmp/meeting_content.txt
cat /tmp/meeting_content.txt
```

**From file:**
Read the file using Read tool.

**From URL:**
Use WebFetch to extract content.

### 2. Extract Key Information

From the meeting content, extract:
- **Meeting Overview**: Date, participants, purpose
- **One-Sentence Summary**: 20-word essence
- **Topics Discussed**: Main discussion points
- **Decisions**: What was decided
- **Action Items**: Tasks with owners and due dates
- **Open Questions**: Unresolved items
- **Key Context**: Important background

### 3. Output Format

Present the summary in clean markdown:

```markdown
# Meeting Summary: [Brief Title]

## Meeting Overview
- **Date**: [Date if known]
- **Participants**: [List of attendees]
- **Purpose**: [Main meeting objective]

## One-Sentence Summary
[20 words or less]

## Topics Discussed
- [Topic 1]: [Brief summary]
- [Topic 2]: [Brief summary]

## Decisions
- [Decision 1]
- [Decision 2]

## Action Items
- [ ] [Action] (@person, due: [date])
- [ ] [Action] (@person, due: [date])

## Open Questions
- [Question needing follow-up]

## Key Context
- [Important background]
```

### 4. Optional: Save Summary

If user requests, save to their notes location:

```bash
# Example: Save to a meetings directory
mkdir -p ~/notes/meetings/
cat > ~/notes/meetings/$(date +%Y-%m-%d)-meeting-title.md << 'EOF'
[Summary content]
EOF
```

## Usage Examples

**From pasted text:**
```
/summarize-meeting

[User pastes meeting notes]
```

**From clipboard:**
```
/summarize-meeting clipboard
```

**From file:**
```
/summarize-meeting ~/Downloads/meeting-transcript.txt
```

## Output Behavior

1. Display the formatted summary
2. Ask: "Save to file, or just display?"
3. If saving, confirm location and save

## Error Handling

**No content provided:**
- Ask user to paste content or provide file/URL

**Content too short:**
- Proceed but note: "Limited content - summary may be incomplete"

**Audio/Video URL:**
- Note that transcript extraction may be needed
- Suggest using yt-dlp for YouTube or similar tools


**Philosophy**: Meetings generate information that quickly becomes lost. This command captures the signal (decisions, actions) and discards the noise (tangents, repetition).
