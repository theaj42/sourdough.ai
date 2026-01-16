#!/bin/bash
#
# sourdough.ai installer
# Sets up the framework and creates your personal layer
#

set -e

echo "🍞 sourdough.ai installer"
echo "========================="
echo ""

# Detect OS
OS="$(uname -s)"
case "${OS}" in
    Darwin*)    PLATFORM="macos";;
    Linux*)     PLATFORM="linux";;
    *)          PLATFORM="unknown";;
esac

echo "Detected platform: ${PLATFORM}"

# Set default paths
FRAMEWORK_DIR="${SOURDOUGH_FRAMEWORK:-$HOME/sourdough.ai}"
DATA_DIR="${SOURDOUGH_DATA:-$HOME/ai-data}"

echo "Framework directory: ${FRAMEWORK_DIR}"
echo "Personal data directory: ${DATA_DIR}"
echo ""

# Check if we're in the right place
if [[ ! -f "${FRAMEWORK_DIR}/README.md" ]]; then
    echo "Error: Run this script from the sourdough.ai directory"
    exit 1
fi

# Create personal data directory structure
echo "Creating personal data directory structure..."
mkdir -p "${DATA_DIR}/skills"
mkdir -p "${DATA_DIR}/learning"
mkdir -p "${DATA_DIR}/logs/sessions"
mkdir -p "${DATA_DIR}/memory"
mkdir -p "${DATA_DIR}/inbox"
mkdir -p "${DATA_DIR}/projects"
mkdir -p "${DATA_DIR}/cache"

# Create starter CLAUDE.md if it doesn't exist
if [[ ! -f "${DATA_DIR}/CLAUDE.md" ]]; then
    echo "Creating starter CLAUDE.md..."
    cat > "${DATA_DIR}/CLAUDE.md" << 'EOF'
# My AI Assistant Configuration

This file contains your personal instructions for Claude Code.

## About Me

<!-- Add context about yourself, your work, your preferences -->

## Working Preferences

<!-- How you like to work with your AI assistant -->

## Current Focus

<!-- What you're working on right now -->

---

*This file is loaded by Claude Code at session start.*
*Customize it to make your AI assistant truly yours.*
EOF
fi

# Set up Python virtual environment if needed
if [[ ! -d "${FRAMEWORK_DIR}/engine/venv" ]]; then
    echo "Setting up Python virtual environment..."
    python3 -m venv "${FRAMEWORK_DIR}/engine/venv"
    source "${FRAMEWORK_DIR}/engine/venv/bin/activate"
    pip install --upgrade pip
    if [[ -f "${FRAMEWORK_DIR}/engine/requirements.txt" ]]; then
        pip install -r "${FRAMEWORK_DIR}/engine/requirements.txt"
    fi
    deactivate
fi

# Create symlinks for skills (optional)
echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit ${DATA_DIR}/CLAUDE.md with your preferences"
echo "2. Start a Claude Code session in your home directory"
echo "3. Begin using and customizing your assistant"
echo ""
echo "🍞 Your starter culture is ready. Time to feed it."
