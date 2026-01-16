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
├── testing/       # Test infrastructure
└── requirements.txt  # Python dependencies
```

## Setup

The installer (`install.sh`) handles this automatically, but if you need to set up manually:

```bash
# Create virtual environment
python3 -m venv engine/venv

# Activate and install dependencies
source engine/venv/bin/activate
pip install -r engine/requirements.txt
```

## Dependencies

Core dependencies (see `requirements.txt` for full list):

| Package | Purpose |
|---------|---------|
| `anthropic` | Claude API client |
| `openai` | Embeddings API |
| `chromadb` | Vector database for semantic memory |
| `pyyaml` | Configuration files |
| `python-dotenv` | Environment variables |
| `beautifulsoup4` | Web content parsing |
| `feedparser` | RSS feed parsing |
| `rich` | Terminal output formatting |

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
