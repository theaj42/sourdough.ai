#
# sourdough.ai installer for Windows
# Sets up the framework and creates your personal layer
#
# Run with: .\install.ps1
# Or: powershell -ExecutionPolicy Bypass -File .\install.ps1
#

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "sourdough.ai installer" -ForegroundColor Yellow
Write-Host "=========================" -ForegroundColor Yellow
Write-Host ""

# Set default paths
$FrameworkDir = if ($env:SOURDOUGH_FRAMEWORK) { $env:SOURDOUGH_FRAMEWORK } else { "$HOME\sourdough.ai" }
$DataDir = if ($env:SOURDOUGH_DATA) { $env:SOURDOUGH_DATA } else { "$HOME\ai-data" }

Write-Host "Framework directory: $FrameworkDir"
Write-Host "Personal data directory: $DataDir"
Write-Host ""

# Check if we're in the right place
if (-not (Test-Path "$FrameworkDir\README.md")) {
    Write-Host "Error: Run this script from the sourdough.ai directory" -ForegroundColor Red
    Write-Host "Expected to find: $FrameworkDir\README.md" -ForegroundColor Red
    exit 1
}

# Create personal data directory structure
Write-Host "Creating personal data directory structure..."
$directories = @(
    "$DataDir\skills",
    "$DataDir\learning",
    "$DataDir\logs\sessions",
    "$DataDir\memory",
    "$DataDir\inbox",
    "$DataDir\projects",
    "$DataDir\cache",
    "$DataDir\config"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "  Created: $dir" -ForegroundColor Green
    }
}

# Create starter CLAUDE.md if it doesn't exist
if (-not (Test-Path "$DataDir\CLAUDE.md")) {
    Write-Host "Creating starter CLAUDE.md..."
    $claudeMdContent = @'
# Claude Code Configuration

Personal instructions for your AI assistant. Claude Code reads this file at session start.

---

## About Me

<!-- Delete the examples and add your own context -->

I am a [your role] working on [your domain].

**Technical background**: [Your experience level and areas of expertise]

**Current projects**: [What you're actively working on]

---

## Working Preferences

### Communication Style
- Be concise by default; I'll ask if I want more detail
- Skip excessive enthusiasm - be direct and genuine
- Push back if my approach seems wrong

### Autonomy Level
- **Routine tasks**: Decide and implement, explain after
- **Significant changes**: Ask before proceeding
- Make commits at logical breakpoints without asking

### Error Handling
- Try 2-3 fixes before reporting an error to me
- You're likely better at debugging than I am

### File Operations
- Prefer editing existing files over creating new ones
- Always read a file before modifying it
- Don't create documentation unless I ask for it

---

## Session Logging

Log sessions to track what we accomplish across conversations.

**Location**: `~/ai-data/logs/sessions/YYYY-MM-DD.md`

At session end or natural breakpoints, update today's log with:
- What was accomplished
- Decisions made
- Files created/modified
- Next steps

See the session logging guide: `~/sourdough.ai/docs/session-logging.md`

---

## Learning

As we work together, capture observations about my patterns and preferences.

**User model**: `~/ai-data/learning/user_model.yaml`
- Write observations autonomously
- Note my corrections and stated preferences

**Approach registry**: `~/ai-data/learning/approach_registry/`
- Document what works for different problem types

See templates in `~/sourdough.ai/learning/templates/`

---

## Current Focus

<!-- Update this section regularly with what you're working on -->

**This week**:
- [ ] Task 1
- [ ] Task 2

**Active projects**:
- Project A: Brief status
- Project B: Brief status

---

## Custom Instructions

<!-- Add any specific instructions for your workflow -->

### Tools I Use
- [List your common tools, languages, frameworks]

### Conventions
- [Any coding conventions, naming patterns, etc.]

### Off-Limits
- [Anything Claude should avoid doing]

---

*Customize this file to make your AI assistant truly yours.*
*The more context you provide, the better it can help.*
'@
    $claudeMdContent | Out-File -FilePath "$DataDir\CLAUDE.md" -Encoding utf8
    Write-Host "  Created: $DataDir\CLAUDE.md" -ForegroundColor Green
}

# Set up Python virtual environment if needed
$venvPath = "$FrameworkDir\engine\venv"
if (-not (Test-Path $venvPath)) {
    Write-Host "Setting up Python virtual environment..."
    try {
        python -m venv $venvPath
        & "$venvPath\Scripts\Activate.ps1"
        pip install --upgrade pip
        if (Test-Path "$FrameworkDir\engine\requirements.txt") {
            pip install -r "$FrameworkDir\engine\requirements.txt"
        }
        deactivate
        Write-Host "  Python environment created" -ForegroundColor Green
    }
    catch {
        Write-Host "  Note: Python venv setup skipped (python not found or error occurred)" -ForegroundColor Yellow
        Write-Host "  You can set this up manually later if needed" -ForegroundColor Yellow
    }
}

# Set up skill symlinks for Claude Code
Write-Host "Setting up Claude Code skills..."
$claudeSkillsDir = "$HOME\.claude\skills"
if (-not (Test-Path $claudeSkillsDir)) {
    New-Item -ItemType Directory -Path $claudeSkillsDir -Force | Out-Null
}

$skillDirs = Get-ChildItem -Path "$FrameworkDir\skills" -Directory -ErrorAction SilentlyContinue
foreach ($skillDir in $skillDirs) {
    $skillName = $skillDir.Name
    $skillMd = Join-Path $skillDir.FullName "SKILL.md"
    $targetLink = Join-Path $claudeSkillsDir $skillName

    if ((Test-Path $skillMd) -and (-not (Test-Path $targetLink))) {
        try {
            # Create directory junction (works without admin on Windows)
            cmd /c mklink /J "$targetLink" "$($skillDir.FullName)" 2>$null
            Write-Host "  Linked skill: $skillName" -ForegroundColor Green
        }
        catch {
            Write-Host "  Could not link skill: $skillName (may need admin privileges)" -ForegroundColor Yellow
        }
    }
}

# Set up skill symlinks for Gemini CLI
Write-Host "Setting up Gemini CLI skills..."
$geminiSkillsDir = "$HOME\.gemini\skills"
if (-not (Test-Path $geminiSkillsDir)) {
    New-Item -ItemType Directory -Path $geminiSkillsDir -Force | Out-Null
}

foreach ($skillDir in $skillDirs) {
    $skillName = $skillDir.Name
    $skillMd = Join-Path $skillDir.FullName "SKILL.md"
    $targetLink = Join-Path $geminiSkillsDir $skillName

    if ((Test-Path $skillMd) -and (-not (Test-Path $targetLink))) {
        try {
            cmd /c mklink /J "$targetLink" "$($skillDir.FullName)" 2>$null
            Write-Host "  Linked skill: $skillName" -ForegroundColor Green
        }
        catch {
            Write-Host "  Could not link skill: $skillName (may need admin privileges)" -ForegroundColor Yellow
        }
    }
}

Write-Host ""
Write-Host "Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Edit $DataDir\CLAUDE.md with your preferences"
Write-Host "2. Start a Claude Code session in your home directory"
Write-Host "3. Begin using and customizing your assistant"
Write-Host ""
Write-Host "Your starter culture is ready. Time to feed it." -ForegroundColor Yellow
Write-Host ""

# Note about symlinks if they failed
Write-Host "Note: If skill linking failed, you can run this script as Administrator" -ForegroundColor Gray
Write-Host "or manually copy skill folders to $claudeSkillsDir" -ForegroundColor Gray
