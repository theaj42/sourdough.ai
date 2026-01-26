# Architecture (AI Documentation)

Complete system architecture for sourdough.ai framework.

## Core Concept

Sourdough is a **configuration and content framework** for LLM-based AI assistants (Claude Code, Gemini CLI), not a standalone application.

**It provides**:
- Structured skills (reusable workflows)
- Learning framework (preference capture)
- Session logging (cross-conversation memory)
- Documentation and lessons
- Conventions and patterns

**It leverages**:
- Claude Code's native file operations
- Claude Code's command execution
- Claude Code's CLAUDE.md loading
- LLM's natural language understanding

**It does NOT**:
- Replace Claude Code
- Require custom Python agents (engine/ is placeholder for future)
- Need running services or daemons
- Require API keys (beyond LLM API)

## Two-Layer Architecture

```
┌─────────────────────────────────────┐
│  Framework Layer (sourdough.ai)     │
│  - Base skills                      │
│  - Learning templates               │
│  - Documentation                    │
│  - Engine (future/optional)         │
└──────────────┬──────────────────────┘
               │ loads & uses
┌──────────────┴──────────────────────┐
│  Personal Layer (~/ai-data/)        │
│  - Custom skills (override)         │
│  - Learning data (user model, etc.) │
│  - Session logs                     │
│  - Projects                         │
│  - CLAUDE.md (user config)          │
└─────────────────────────────────────┘
```

### Framework Layer (`~/sourdough.ai/`)

**Managed by git**, updated via `git pull`, shared across users.

```
sourdough.ai/
├── skills/              # Base skills (examples, fabric patterns)
├── learning/            # Templates and schema
├── docs/                # Human documentation
├── docs/ai/             # AI documentation (this file)
├── engine/              # Future: Python agents/integrations
├── install.sh           # Mac/Linux installer
├── install.ps1          # Windows installer
└── README.md            # Project overview
```

**Purpose**: Provide proven patterns, examples, and structure.

### Personal Layer (`~/ai-data/`)

**User-specific**, not tracked in framework git, fully customizable.

```
ai-data/
├── skills/              # User's custom skills
├── learning/            # User model, approach registry, failures
│   ├── user_model.yaml
│   ├── approach_registry/
│   └── failures/
├── logs/sessions/       # Session logs (YYYY-MM-DD.md)
├── projects/            # Project tracking
├── inbox/               # Capture inbox
├── memory/              # Future: ChromaDB, shared content
└── CLAUDE.md            # User configuration for Claude Code
```

**Purpose**: Personalization, privacy, customization.

## Loading Behavior

### Skill Loading

Claude Code/Gemini loads skills from:
1. Framework skills: `~/sourdough.ai/skills/`
2. Personal skills: `~/ai-data/skills/`

**Resolution**: Personal skills override framework skills with same name.

**Implementation**: AI systems scan both directories, preferring personal layer.

### Learning Data

Learning files are **write-only to personal layer**:
- `~/ai-data/learning/user_model.yaml`
- `~/ai-data/learning/approach_registry/*.yaml`
- `~/ai-data/learning/failures/*.md`

Framework provides **templates only** (`~/sourdough.ai/learning/templates/`).

### Session Logs

Logs are **always personal layer**:
- Daily logs: `~/ai-data/logs/sessions/YYYY-MM-DD.md`
- Rolling summary: `~/ai-data/logs/sessions/rolling-summary.md`

**Read at session start** to maintain context.

### Configuration (CLAUDE.md)

Primary configuration: `~/ai-data/CLAUDE.md`

**Claude Code loads this automatically** (via standard CLAUDE.md discovery).

## Component Interaction

```
User ←→ Claude Code ←→ Sourdough Framework
                  ↓
            Skills System ←→ Lessons
                  ↓
          Learning Framework ←→ User Model
                  ↓
         Session Logs ←→ Projects
```

**Flow**:
1. User starts Claude Code session
2. Claude Code loads `~/ai-data/CLAUDE.md` (if present)
3. CLAUDE.md may reference sourdough paths
4. AI reads session logs (if directed)
5. AI loads relevant skills when invoked
6. AI updates learning files during work
7. AI updates session logs at breakpoints

## Skills System

See [skills-system.md](skills-system.md) for complete details.

**Summary**:
- Skills are markdown files (`SKILL.md`) with structured instructions
- AI reads skill, follows instructions
- Skills are reusable, shareable, extensible

**Location**:
- Framework skills: `~/sourdough.ai/skills/`
- User skills: `~/ai-data/skills/`

## Learning Framework

See [learning-framework.md](learning-framework.md) for complete details.

**Summary**:
- AI observes user patterns
- Writes observations to YAML/markdown files
- Reads files to personalize assistance
- User reviews and refines periodically

**Files**:
- `user_model.yaml`: Communication and working preferences
- `approach_registry/*.yaml`: Problem-solution mappings
- `failures/*.md`: Post-mortems on issues

## Session Management

See [session-management.md](session-management.md) for complete details.

**Summary**:
- Session logs preserve context across conversations
- Daily logs: `YYYY-MM-DD.md`
- Format: Summary at top, sessions in reverse chronological order
- AI reads at session start, updates at breakpoints

## File Operations

See [file-operations.md](file-operations.md) for complete details.

**Key principles**:
- Always Read before Edit
- Never overwrite without reading
- Confirm destructive operations
- Follow user's explicit permissions

## Engine (Future)

The `engine/` directory is a **placeholder** for future Python-based components:
- Agents (knowledge synthesis, connection finding)
- Integrations (ChromaDB, external APIs)
- Utilities (shared functions)

**Current state**: Empty (`.gitkeep` files)

**Future state**: Optional Python components for advanced features

**MVP approach**: Leverage Claude Code's built-in capabilities, skip custom engine code

## LLM Agnosticism

Sourdough works with:
- **Claude Code** (primary, fully tested)
- **Gemini CLI** (compatible, patterns work)
- **Other LLM tools** (if they support: file ops, CLAUDE.md loading, skill patterns)

**How**:
- Skills are plain markdown (no Claude-specific features)
- Learning files are YAML/markdown (portable)
- Session logs are markdown (portable)
- No API-specific code in framework layer

**Platform differences** (AI handles):
- Command execution: bash (Mac/Linux) vs PowerShell (Windows)
- Paths: forward vs backslash
- Line endings: LF vs CRLF

## Data Privacy

**All data stays local**:
- Framework git repo (public or private, user choice)
- Personal layer (`~/ai-data/`) never leaves user's machine
- No telemetry, no external services (except LLM API)

**User controls**:
- What files AI can access (by pointing)
- What commands AI runs (by approving)
- What gets logged (by content they create)

## Version Control

**Framework**:
- Tracked in git
- Users `git pull` for updates
- Clean separation prevents merge conflicts

**Personal layer**:
- Optionally tracked in separate git repo
- User's choice to version or not
- Recommended: Use git for learning files, session logs

## Installation

**Mac/Linux**: `install.sh`
- Creates personal layer structure
- Sets up Python venv (for future engine use)
- Creates starter CLAUDE.md

**Windows**: `install.ps1`
- Same functionality as Mac/Linux installer
- PowerShell-based
- Cross-platform parity

## Dependencies

**Minimal**:
- Python 3.10+ (for future engine features)
- Git (for framework updates)
- Claude Code or Gemini CLI

**Optional** (for future engine):
- See `engine/requirements.txt`
- Not needed for MVP functionality

## Extensibility

**Add skills**: Drop `SKILL.md` in skills directory
**Add lessons**: Add markdown files to `skills/lessons/content/`
**Extend learning**: Add new YAML schemas to templates
**Customize workflows**: Edit CLAUDE.md, create custom skills

**Philosophy**: Simple file-based extensibility, no programming required.

## Key Design Decisions

### 1. Configuration over Code
**Why**: Easier to understand, maintain, and share.
**Result**: Skills as markdown, learning as YAML, logs as markdown.

### 2. Two-Layer Pattern
**Why**: Clean framework updates without merge conflicts.
**Result**: Users pull updates without breaking customizations.

### 3. Leverage LLM Tools
**Why**: Don't reinvent file operations, command execution, etc.
**Result**: Simple framework, powerful capabilities.

### 4. File-Based State
**Why**: Transparent, versionable, debuggable.
**Result**: Everything is a readable file, no hidden state.

### 5. Privacy First
**Why**: Users must trust the system with their data.
**Result**: Local-only, no external services, user controls access.

## Performance Considerations

**Skill loading**: Fast (just reading markdown files)
**Learning file updates**: Minimal (small YAML files)
**Session log reading**: Can be slow if logs are large (mitigate with rolling summary)
**Context limits**: Reading all logs may hit token limits (read selectively)

**Optimization strategies**:
- Read only recent logs (last 3-7 days)
- Use rolling summary for older context
- Selective skill loading (only when needed)

## Error Handling

**Missing files**: Create with defaults (installer provides templates)
**Corrupt YAML**: Report error, suggest fix, don't crash
**Bad skill format**: Skip skill, warn user
**Permission errors**: Inform user, suggest fix

**Philosophy**: Degrade gracefully, never lose user data.

## Future Architecture

**Planned additions** (post-MVP):
- MCP server integration
- ChromaDB memory system
- Content ingestion pipeline
- Multi-machine sync
- Advanced agents in `engine/`

**Stays the same**:
- Two-layer pattern
- Skills system
- Learning framework
- Session logging

## Migration Path

**From raw Claude Code** → **Sourdough**:
1. Install sourdough framework
2. Move existing CLAUDE.md to `~/ai-data/CLAUDE.md`
3. Organize work into `~/ai-data/projects/`
4. Start using session logging
5. Create skills for common workflows
6. Let learning framework capture preferences

**Sourdough MVP** → **Sourdough Advanced**:
1. Add engine components as needed
2. Enable MCP servers
3. Set up ChromaDB memory
4. Advanced multi-machine sync

**Gradual adoption supported**: Use what you need, skip the rest.

---

## Summary for AI Systems

**Sourdough is**:
- Configuration framework for LLM assistants
- Two-layer: framework + personal
- Skills + Learning + Logging
- File-based, local, private

**When assisting users**:
- Read session logs at start
- Follow skill instructions precisely
- Write to learning files when patterns observed
- Update session logs at breakpoints
- Respect the responsibility model

**Core principle**: Augment user capability through structured patterns and persistent context.
