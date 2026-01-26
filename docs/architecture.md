# Architecture

How sourdough.ai works under the hood.

## The Big Picture

Sourdough is a **configuration framework** for AI assistants, not a standalone application.

```
┌────────────────────────┐
│   You                  │
│   ↓                    │
│   Claude Code          │  ← AI assistant (Claude, Gemini, etc.)
│   ↓                    │
│   Sourdough Framework  │  ← Skills, patterns, structure
└────────────────────────┘
```

**It provides**:
- Structured workflows (skills)
- Cross-conversation memory (session logs)
- Preference learning (learning framework)
- Organized patterns (documentation)

**It leverages**:
- Claude Code's file operations
- Claude Code's command execution
- Your LLM's natural language understanding

## Two-Layer Design

The key architectural insight: **separation of framework and personal data**.

```
Framework (shared)          Personal (yours)
~/sourdough.ai/            ~/ai-data/
├── skills/                ├── skills/           ← Override
├── learning/templates/    ├── learning/         ← Your data
├── docs/                  ├── logs/sessions/    ← Your logs
└── README.md              ├── projects/         ← Your projects
                           └── CLAUDE.md         ← Your config
```

**Why this matters**:
- Update framework with `git pull` - no conflicts
- Your customizations never get overwritten
- Share framework, keep personal data private
- Clean separation of concerns

## How It Works

### 1. You Start a Session

```bash
cd ~
claude
```

### 2. Claude Code Loads Configuration

Automatically loads `~/ai-data/CLAUDE.md` (if it exists)

### 3. AI Reads Context (if configured)

- Session logs from recent days
- Your user model (preferences)
- Rolling summary (longer context)

### 4. You Ask for Help

"Create a backup script for my documents"

### 5. AI Assists

- Understands your request
- May invoke a skill if applicable
- Reads/writes files as needed
- Runs commands if appropriate
- Updates learning files (observations)

### 6. Session Ends

- Update today's session log
- Commit logs to git (optional)
- Work preserved for next time

## Components

### Skills

**What**: Structured instructions in markdown files
**Where**: `~/sourdough.ai/skills/` and `~/ai-data/skills/`
**Purpose**: Reusable workflows

**Example**: A "code-review" skill that systematically checks code quality.

See [skills/README.md](../skills/README.md) for details.

### Learning Framework

**What**: YAML and markdown files capturing patterns
**Where**: `~/ai-data/learning/`
**Purpose**: AI learns your preferences over time

**Files**:
- `user_model.yaml` - Your preferences and patterns
- `approach_registry/` - Solutions that work
- `failures/` - Post-mortems to prevent repeating mistakes

See [learning/README.md](../learning/README.md) for details.

### Session Logs

**What**: Markdown files tracking work
**Where**: `~/ai-data/logs/sessions/`
**Purpose**: External memory across conversations

**Format**: Daily logs (YYYY-MM-DD.md) + rolling summary

See [session-logging.md](session-logging.md) for details.

### Engine (Future)

**What**: Python agents and integrations
**Where**: `~/sourdough.ai/engine/`
**Status**: Placeholder for future features

**Current MVP**: Leverage Claude Code's built-in capabilities.

**Future**: Optional Python components for advanced features (ChromaDB, agents, etc.)

## Data Flow

```
Session Start
    ↓
Load CLAUDE.md → Load session logs → Load user model
    ↓
Ready for work
    ↓
User requests → AI assists → Files read/written
    ↓
Observe patterns → Update learning files
    ↓
Session end → Update session log → Commit (optional)
```

## File Operations

AI can:
- **Read** any file you point it to
- **Write** new files
- **Edit** existing files (always reads first)
- **Run** bash/PowerShell commands

**Safety**: You control what AI can access by pointing to files/directories.

## Privacy Model

**Everything stays local**:
- No telemetry
- No external services (except LLM API)
- No data leaves your machine
- You own all data

**Transparency**:
- All files are plain text (readable)
- All changes are explicit
- Version control shows what changed
- You can inspect/edit/delete anything

## LLM Agnostic

Works with:
- **Claude Code** (primary, fully tested)
- **Gemini CLI** (compatible)
- **Other LLM tools** (if they support file ops and configuration loading)

**How**: Skills are plain markdown, learning files are YAML, no AI-specific APIs.

## Extensibility

**Add skills**: Drop SKILL.md in skills directory
**Customize config**: Edit CLAUDE.md
**Track projects**: Add PROJECT.md files
**Share patterns**: Commit approaches to team repo

**No programming required** for basic extensibility.

## Performance

**Fast**:
- Skill loading (just reading markdown)
- Learning file updates (small YAML files)
- Session log writing (append to markdown)

**Can be slow**:
- Reading many session logs (lots of text)
- Exceeding context limits (too much history)

**Optimization**: Use rolling summary, read selectively.

## Comparison to Other Approaches

### vs. Raw Claude Code

**Sourdough adds**:
- Structure (skills, session logs)
- Memory (learning framework, logs)
- Patterns (proven workflows)
- Organization (projects, tracking)

### vs. Custom AI App

**Sourdough is lighter**:
- No custom code to maintain
- No services to run
- No APIs to manage
- Just files and configuration

### vs. IDE Copilot

**Sourdough is broader**:
- Works across all tasks (not just code)
- Maintains context across sessions
- Learns your preferences
- Organizes your work

## Future Architecture

**Planned additions** (Phase 2):
- MCP server integration
- ChromaDB memory
- Content ingestion pipeline
- Multi-machine sync

**Core remains same**:
- Two-layer pattern
- Skills system
- Learning framework
- Session logging

## Getting Started

See [getting-started.md](getting-started.md) for installation and first steps.

## Questions?

Ask your AI assistant! Say: "Explain how sourdough architecture works"

---

*Simple by design. Powerful in practice.*
