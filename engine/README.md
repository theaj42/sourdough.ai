# Engine

Core capabilities that power the AI assistant.

## Structure

```
engine/
├── agents/        # Autonomous agents (knowledge synthesis, connection finding, etc.)
├── integrations/  # External service integrations (memory, APIs, etc.)
├── utils/         # Shared utility functions
├── hooks/         # Claude Code hook system
├── scripts/       # Executable scripts
└── testing/       # Test infrastructure
```

## Agents

Agents are autonomous components that perform specific tasks:

- **Knowledge Synthesizer**: Generates insights from session logs and notes
- **Connection Finder**: Discovers relationships between ideas
- **Discovery Engine**: Surfaces relevant context from memory

## Integrations

Integrations connect to external services:

- **Memory System**: ChromaDB-based semantic memory
- **Content Ingest**: YouTube, blogs, PDFs → knowledge library

## Adding Components

Place new agents in `agents/`, new integrations in `integrations/`.
Follow existing patterns. Keep dependencies minimal.
