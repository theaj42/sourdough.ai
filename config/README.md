# Configuration

Optional settings to customize how Sourdough works for you.

## Quick Start

1. Copy `settings.example.yaml` to your personal data directory:
   ```bash
   cp ~/sourdough.ai/config/settings.example.yaml ~/ai-data/config/settings.yaml
   ```

2. Edit `~/ai-data/config/settings.yaml` with your preferences

3. Your AI assistant will read these settings at session start

## Do I Need This?

**No.** Sourdough works fine without a config file. The defaults are sensible.

Consider creating a config if you want to:
- Change where data is stored (e.g., OneDrive instead of ~/ai-data/)
- Adjust session logging detail level
- Enable integrations (daily notes, task managers, etc.)
- Customize communication preferences

## Settings Overview

| Section | What It Controls |
|---------|------------------|
| `paths` | Where your personal data lives |
| `session_logging` | How much detail, what to capture, when to update |
| `learning` | How the system captures your preferences |
| `communication` | Response length, confirmation preferences |
| `integrations` | Connect to Obsidian, Todoist, calendars, etc. |
| `advanced` | Git auto-commit, rolling summaries |

## Your Config vs. Framework Config

- **Framework config** (`~/sourdough.ai/config/`): Examples and defaults
- **Your config** (`~/ai-data/config/`): Your personal settings

Your config overrides framework defaults. This separation means you can update Sourdough without losing your settings.
