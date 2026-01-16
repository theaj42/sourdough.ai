---
name: fabric-extract-nuggets
description: Extract actionable content and filter hype/marketing from videos and articles. Invoke when user provides content with potential hype/marketing, wants signal without noise, or needs bullshit filtering.
allowed-tools: ["Bash", "Read", "WebFetch", "Task"]
---

# Extract Nuggets - Content Extraction Without Bullshit

Extract valuable insights from content while filtering out marketing hype, self-promotion, and fluff.

## Purpose

You've identified a video or article that might have useful information, but it's wrapped in marketing language, self-promotion, or excessive hype. This command extracts only the actionable nuggets and filters the bullshit.

**What gets extracted:**
- Actionable steps and techniques
- Specific tools and technical details
- Verifiable facts and data
- Genuine insights (not marketing claims)

**What gets filtered:**
- Marketing hype ("insane", "game changer", "revolutionary")
- Self-promotion and lead generation
- Repeated concepts and redundancy
- Logical fallacies and unverified claims
- Fluff and filler content

## Input

User provides:
- URL (YouTube video, blog post, article)
- OR local file path
- OR paste text directly

## Process

### 1. Extract Content

**For YouTube videos:**
```bash
# Get transcript using yt-dlp
cd /tmp
yt-dlp --skip-download --write-auto-sub --sub-lang en --convert-subs vtt -o "%(id)s" "[URL]"

# Read VTT file and clean formatting
cat [video_id].en.vtt | grep -v "^WEBVTT" | grep -v "^Kind:" | grep -v "^Language:" | grep -v "^[0-9][0-9]:" | grep -v "^$" | grep -v "<c>" > transcript.txt
```

**For web content:**
Use WebFetch to get article text.

**For local files:**
Read file directly.

### 2. Extract and Filter

**Step 1: Extract Ideas and Recommendations**

From the content, extract:
- IDEAS: Key concepts and techniques mentioned
- RECOMMENDATIONS: Actionable steps
- FACTS: Verifiable technical details
- REFERENCES: Tools, technologies, resources mentioned

**Step 2: Analyze Claims for Hype**

Analyze the content for:
- Unsubstantiated claims (marketing hype)
- Logical fallacies
- Exaggerations and superlatives
- Self-promotional language

### 3. Filter and Synthesize

**Include:**
- Ideas with specific details (not vague concepts)
- Recommendations that are actionable (not "sign up for my course")
- Facts that are verifiable
- Tools/technologies with clear use cases
- Technical steps and configurations

**Exclude:**
- Claims that are unverifiable marketing
- Content with logical fallacies
- Vague statements ("it's powerful", "game changer")
- Self-promotion ("check out my program")
- Repeated ideas (consolidate duplicates)

### 4. Output Format

```markdown
# Extracted Nuggets: [Title]

**Source**: [URL]
**Type**: [YouTube/Article/PDF]
**Content Quality**: [Assessment based on claim analysis]


## Actionable Steps

[List concrete, specific steps]
- Step 1: [Specific action]
- Step 2: [Specific action]

## Technical Details

[Specific technical information, configurations, requirements]
- Tool: [name] - [what it does]
- Configuration: [specific settings]
- Requirements: [what you need]

## Key Concepts

[Ideas that passed hype filter - specific, verifiable]
- Concept 1: [Brief explanation with specifics]
- Concept 2: [Brief explanation with specifics]

## Tools & Resources

[Mentioned tools, technologies, references]
- [Tool name]: [Purpose and use case]
- [Resource]: [Why it's relevant]

## Caveats

[Claims that seem questionable or need verification]
- [Claim]: [Why it's questionable]


**Filtering Summary**:
- Original content: [word count]
- Hype/fluff filtered: [percentage]
- Actionable nuggets: [count]
```

## User Experience

User runs: `/fabric-extract-nuggets https://youtu.be/abc123`

You respond:
1. "Extracting content and filtering bullshit..."
2. [Process content]
3. [Output filtered nuggets in markdown]
4. "Extracted X actionable items, filtered Y% marketing fluff"

**No ingestion by default** - just show the nuggets. User can manually save if valuable.

## Examples

### Good Extraction
```markdown
## Actionable Steps
- Create API key at platform.example.com
- Set environment variable: API_KEY="your-key-here"
- Use `model-name` for best results

## Technical Details
- Model: Example Model 2.0
- Feature: Multimodal (text + voice)
- API endpoint: Uses standard REST API
```

### Filtered Out
- "This is INSANE and a complete game changer!"
- "Join my course to learn more (link in description)"
- "You won't believe what happens next"
- Generic statements with no specifics

## Error Handling

**No actionable content found:**
- Report: "No actionable technical content found. Content appears to be pure marketing/promotion."
- Show brief summary of what was filtered out

**Transcript unavailable:**
- Report error
- Suggest manual paste of content

**Ambiguous claims:**
- Include in "Caveats" section
- Note that verification needed


**Philosophy**: Most content is 90% noise, 10% signal. This command finds the 10% and throws away the rest.
