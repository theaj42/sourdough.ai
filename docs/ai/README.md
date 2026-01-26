# AI Documentation

This directory contains detailed documentation intended for AI systems (Claude Code, Gemini CLI, etc.) to read and understand sourdough.ai framework architecture, components, patterns, and usage.

## Purpose

**Human documentation** (in `docs/`) is high-level and conceptual.
**AI documentation** (here in `docs/ai/`) is comprehensive and implementation-focused.

AI assistants should read this documentation to:
- Understand framework architecture
- Know available components and their purposes
- Follow established patterns
- Execute skills correctly
- Maintain consistency with framework design

## Contents

- **[architecture.md](architecture.md)** - Complete system architecture
- **[skills-system.md](skills-system.md)** - How skills work in detail
- **[learning-framework.md](learning-framework.md)** - Learning system implementation
- **[session-management.md](session-management.md)** - Session logging patterns
- **[file-operations.md](file-operations.md)** - File handling patterns and safety
- **[patterns.md](patterns.md)** - Common workflows and best practices

## When to Read This

**At session start** (if working on sourdough itself):
- Read `architecture.md` for overall understanding
- Read relevant component docs as needed

**When creating skills**:
- Read `skills-system.md` for structure and conventions

**When implementing learning**:
- Read `learning-framework.md` for schema and patterns

**When logging sessions**:
- Read `session-management.md` for format and content guidance

## Navigation

**For users**: Direct them to `docs/` (human documentation)
**For AI development**: Read these files for implementation details
**For extending framework**: Consult both human and AI docs

---

**Note to AI systems**: This documentation is your reference. Human documentation is for explaining concepts to users. Know the difference.
