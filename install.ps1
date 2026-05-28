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

# Link every framework skill into a target skills directory (directory junctions, no admin needed).
function Set-SkillLinks {
    param([string]$TargetDir)
    if (-not (Test-Path $TargetDir)) {
        New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
    }
    $skillDirs = Get-ChildItem -Path "$FrameworkDir\skills" -Directory -ErrorAction SilentlyContinue
    foreach ($skillDir in $skillDirs) {
        $skillName = $skillDir.Name
        $skillMd = Join-Path $skillDir.FullName "SKILL.md"
        $targetLink = Join-Path $TargetDir $skillName
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
}

# --- Detect and confirm which AI agent (TUI) to set up for ---
$hasClaude = [bool](Get-Command claude -ErrorAction SilentlyContinue)
$hasGemini = [bool](Get-Command gemini -ErrorAction SilentlyContinue)

# Honor a non-interactive override: SOURDOUGH_AGENT=claude|gemini|both
$agentChoice = ""
switch ("$($env:SOURDOUGH_AGENT)".ToLower()) {
    "claude" { $agentChoice = "claude" }
    "gemini" { $agentChoice = "gemini" }
    "both"   { $agentChoice = "both" }
    ""       { $agentChoice = "" }
    default  { Write-Host "Warning: ignoring unknown SOURDOUGH_AGENT='$($env:SOURDOUGH_AGENT)' (expected claude|gemini|both)" -ForegroundColor Yellow }
}

if ($agentChoice) {
    Write-Host "Agent selected via SOURDOUGH_AGENT: $agentChoice"
}
else {
    if ($hasClaude -and $hasGemini) {
        $detected = "both"; Write-Host "Detected both Claude Code and Gemini CLI."
    }
    elseif ($hasClaude) {
        $detected = "claude"; Write-Host "Detected Claude Code."
    }
    elseif ($hasGemini) {
        $detected = "gemini"; Write-Host "Detected Gemini CLI."
    }
    else {
        $detected = "both"; Write-Host "No agent CLI detected on PATH (looked for 'claude' and 'gemini')."
    }

    # Prompt interactively when possible; otherwise fall back to the detected default.
    $interactive = $true
    try { if ([System.Console]::IsInputRedirected) { $interactive = $false } } catch { $interactive = $false }

    if ($interactive) {
        Write-Host ""
        Write-Host "Which agent should I set up sourdough for?"
        Write-Host "  1) Claude Code"
        Write-Host "  2) Gemini CLI"
        Write-Host "  3) Both"
        $replyChoice = Read-Host "Choose [1/2/3] (default: $detected)"
        switch ($replyChoice) {
            "1" { $agentChoice = "claude" }
            "2" { $agentChoice = "gemini" }
            "3" { $agentChoice = "both" }
            ""  { $agentChoice = $detected }
            default { Write-Host "Unrecognized choice; using default: $detected"; $agentChoice = $detected }
        }
    }
    else {
        $agentChoice = $detected
        Write-Host "Non-interactive shell; using: $agentChoice (set SOURDOUGH_AGENT to override)"
    }
}
Write-Host "Setting up for: $agentChoice"
Write-Host ""

# --- Preflight: warn (don't fail) about missing prerequisites ---
# See docs/prerequisites.md for the full story.
$preflightWarn = $false
function Note-Missing { param($name, $hint) Write-Host "  [missing] $name — $hint" -ForegroundColor Yellow; $script:preflightWarn = $true }
function Have-Cmd { param($name) [bool](Get-Command $name -ErrorAction SilentlyContinue) }

Write-Host "Checking prerequisites..."
if (-not (Have-Cmd python) -and -not (Have-Cmd python3)) { Note-Missing "python" "needed for the engine venv (winget install Python.Python.3.12)" }
if (-not (Have-Cmd git))  { Note-Missing "git" "needed to clone/update (winget install Git.Git)" }
if (-not (Have-Cmd code) -and -not (Have-Cmd notepad)) { Note-Missing "a text editor" "VS Code (winget install Microsoft.VisualStudioCode)" }

if ($agentChoice -eq "claude" -or $agentChoice -eq "both") {
    if (-not (Have-Cmd claude)) { Note-Missing "claude (Claude Code)" "npm install -g @anthropic-ai/claude-code" }
}
if ($agentChoice -eq "gemini" -or $agentChoice -eq "both") {
    if (-not (Have-Cmd gemini)) { Note-Missing "gemini (Gemini CLI)" "npm install -g @google/gemini-cli" }
    if (-not (Have-Cmd gcloud)) { Note-Missing "gcloud" "for Vertex AI auth on corporate accounts (winget install Google.CloudSDK)" }
}
if (-not (Have-Cmd gh)) { Write-Host "  [optional] gh (GitHub CLI) not found — handy for push/pull (winget install GitHub.cli)" -ForegroundColor Gray }

if ($preflightWarn) {
    Write-Host "  -> Some prerequisites are missing. Install help: docs\prerequisites.md" -ForegroundColor Yellow
    Write-Host "     (Continuing setup anyway — you can install them and re-run later.)" -ForegroundColor Gray
} else {
    Write-Host "  All core prerequisites found." -ForegroundColor Green
}
Write-Host ""

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

# Set up skills (and config) for the chosen agent(s)
if ($agentChoice -eq "claude" -or $agentChoice -eq "both") {
    Write-Host "Setting up Claude Code skills..."
    Set-SkillLinks -TargetDir "$HOME\.claude\skills"
}

if ($agentChoice -eq "gemini" -or $agentChoice -eq "both") {
    Write-Host "Setting up Gemini CLI skills..."
    Set-SkillLinks -TargetDir "$HOME\.gemini\skills"
    # Gemini CLI reads GEMINI.md, not CLAUDE.md — give it the same starter config.
    if (-not (Test-Path "$DataDir\GEMINI.md")) {
        Copy-Item -Path "$DataDir\CLAUDE.md" -Destination "$DataDir\GEMINI.md"
        Write-Host "  Created GEMINI.md (copy of CLAUDE.md for Gemini CLI)" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Edit $DataDir\CLAUDE.md with your preferences"
switch ($agentChoice) {
    "claude" {
        Write-Host "2. Start Claude Code in your home directory:  cd ~ ; claude"
        Write-Host "3. Kick off the guided lessons by typing:     Start lessons"
    }
    "gemini" {
        Write-Host "2. Start Gemini CLI in your home directory:   cd ~ ; gemini"
        Write-Host "3. Kick off the guided lessons by typing:"
        Write-Host "   Read ~/sourdough.ai/skills/lessons/SKILL.md and run the lessons with me from lesson 1."
    }
    "both" {
        Write-Host "2. Start your agent in your home directory (cd ~ ; claude  -or-  cd ~ ; gemini)"
        Write-Host "3. Kick off the guided lessons:"
        Write-Host "   - Claude Code:  type  Start lessons"
        Write-Host "   - Gemini CLI:   type  Read ~/sourdough.ai/skills/lessons/SKILL.md and run the lessons with me from lesson 1."
    }
}
Write-Host ""
Write-Host "Your starter culture is ready. Time to feed it." -ForegroundColor Yellow
Write-Host ""

# Note about symlinks if they failed
Write-Host "Note: If skill linking failed, you can run this script as Administrator" -ForegroundColor Gray
Write-Host "or manually copy skill folders into ~\.claude\skills or ~\.gemini\skills" -ForegroundColor Gray
