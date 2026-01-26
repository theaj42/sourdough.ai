# Sourdough.ai MVP Completion - Strategic Brief

**Created**: 2026-01-26
**Status**: Active
**Decision Authority**: Fully autonomous - agents decide structure, content, tools, sequencing

---

## Goal

Create a shareable, easy-to-install agentic AI assistant framework that teaches people the basics of working with AI agents through embedded lessons and clear documentation.

**Target Users**: People who haven't already set up their own systems for building a framework to work with agentic AI assistants.

**Core Value Proposition**: Enable users to learn AI augmentation by actually using the system, not just reading about it.

---

## Success Criteria (Observable Outcomes)

### 1. Framework Ready
- Core system operational and functional
- LLM-agnostic architecture (Claude Code or Gemini CLI, swappable engine)
- Users can have conversations with AI, ask questions, get help
- AI can read from and write to constrained local directories
- System enables troubleshooting via file reading and bash/PowerShell scripts

### 2. Installation Complete
- **Mac installer**: One-click, minimal questions, fast and easy
- **Windows installer**: One-click, minimal questions, fast and easy
- Both installers tested in their respective environments
- Installation asks only necessary questions, nothing more

### 3. Training System Built
- **Embedded lessons**: 5-15 mini-lessons built into sourdough system
- Lessons build on each other progressively
- AI can walk users through lessons in order
- Lessons teach core concepts: conversation, file operations, troubleshooting
- Includes training module on risk/reward of AI file access (user responsibility model)

### 4. Documentation Complete
- **AI documentation**: Full, detailed documentation for AI systems to read and understand
- **Human documentation**: Compact, high-level, clear explanations
- AI and human docs are split apart
- External documentation covers usage, concepts, best practices

### 5. Dexcom Training Stories (Due: Jan 27)
- Beginner training for Sourdough
- Intermediate training for Sourdough

---

## Out of Scope (Phase 2)

- Video training content (later, maybe AI-generated narration + screen recording)
- MCP server integration
- ChromaDB memory system
- Advanced skills beyond basics
- Multi-user or team features
- Linux support

---

## Constraints & Boundaries

### Time
- Tomorrow (Jan 27): Dexcom training stories due
- No other hard deadlines
- Self-imposed timeline only

### Technical
- **LLM agnostic**: Must work with Claude Code or Gemini CLI, engine swappable
- **Windows testing**: No Windows machine available, will need external testers
- **Linux**: Out of scope
- **File permissions**: No sandboxing implemented - users responsible for file safety
- **Training on safety**: Include module explaining risk/reward trade-offs

### Organizational
- **Open source**: Not Dexcom-specific, but Dexcom can use it
- **Predominantly markdown**: Should not trigger corporate security concerns
- **No compliance requirements**: User-side tool, not enterprise deployment

---

## Current State (as of Jan 16, 2026)

**What exists:**
- Initial scaffold: `engine/`, `skills/`, `learning/`, `docs/`
- Learning framework: `SCHEMA.md`, 4 templates
- 3 fabric skills: improve-prompt, extract-nuggets, summarize-meeting
- hello-world example skill
- Basic `install.sh`
- `README.md`, getting-started guide
- Engine requirements.txt
- Session logging guide

**What needs work:**
- Determine gaps between current state and MVP (agents to assess)
- Complete installer for Mac and Windows
- Build embedded lesson delivery system
- Create 5-15 progressive lessons
- Write complete documentation (AI + human versions)
- Test installation process
- Create Dexcom training materials (beginner + intermediate)

---

## Why This Matters

### For Dexcom
- Jason Brunski (great-grand-boss) requested shareable system
- Enable team to adopt AI augmentation
- Demonstrate capability and value of AI assistance

### Personal
- System is high-value and worth sharing broadly
- Enable others to experience AI augmentation firsthand
- Learning happens through using, not just explaining
- Build reusable framework for teaching AI collaboration

---

## Decision Framework

**Agents have full autonomy to decide:**
- Lesson order and structure
- Lesson content (not just outlines)
- Tools and libraries for installers
- Documentation structure and organization
- Work sequencing and parallelization
- Dependency management
- Approach to embedded lesson delivery

**Design principles:**
- Friendly, helpful, easy to understand
- Easy to use, low friction
- One-click where possible
- Minimal questions during setup
- Progressive learning (build concepts incrementally)

**When to check in:**
- When blockers are encountered
- When significant risks are identified
- When design decisions have major architectural implications

---

## Risks & Unknowns

**Known unknowns:**
- How to deliver embedded lessons (skill-based? script-based? other?)
- Windows installer approach and testing strategy
- How to structure lessons for progressive learning

**Will discover:**
- Additional gaps in current implementation
- Integration challenges between components
- Testing requirements

---

## Context & Resources

### Reference Implementation
- AJ's AI-assistant repo (`~/AI-assistant`) - patterns and structure to follow
- Session logs documenting sourdough.ai creation (2026-01-16)

### Philosophy
- "Choose the simplest, most efficient path to reach the desired goal"
- Build over planning, avoid analysis paralysis
- Learn by doing, iterate based on usage
- Organic evolution over upfront over-engineering

---

## Next Steps for Agents

1. **Assess current state**: Review existing sourdough.ai structure, identify gaps
2. **Define dependencies**: Determine what must be built in sequence vs parallel
3. **Prioritize work**: Start with highest-value or blocking items
4. **Execute autonomously**: Build, test, iterate
5. **Document progress**: Track what's done in execution log
6. **Deliver by Jan 27**: Dexcom training materials (beginner + intermediate)

---

## Execution Tracking

See `execution-log.md` for detailed progress, decisions, and outcomes as agents work through this brief.
