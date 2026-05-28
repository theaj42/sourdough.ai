# Prerequisites

Sourdough drives an **agentic CLI** — either [Claude Code](https://docs.anthropic.com/en/docs/claude-code) or [Gemini CLI](https://github.com/google-gemini/gemini-cli). Before you run `install.sh` / `install.ps1`, get the pieces below in place. Most of the time people spend "setting up sourdough" is actually spent setting up these prerequisites — so this page exists to get you over them quickly.

> **Enterprise / corporate account?** Jump to [Authenticating your agent](#4-authenticate-your-agent) — corporate Google/Microsoft accounts usually **cannot** use the free individual tiers and need a cloud-backed path (Vertex AI / Bedrock). That single gotcha is the #1 thing that stalls a first install.

---

## At a glance

| You need | macOS / Linux | Windows | Why |
|---|---|---|---|
| Package manager | [Homebrew](https://brew.sh) | [winget](https://learn.microsoft.com/windows/package-manager/) / [Scoop](https://scoop.sh) | Installs everything below |
| Python 3.10+ | `brew install python` | `winget install Python.Python.3.12` | Engine venv |
| Git | `brew install git` | `winget install Git.Git` | Clone + version control |
| A terminal | built-in (Terminal) — or [Ghostty](https://ghostty.org) | Windows Terminal | Where you run the agent |
| A text editor | [VS Code](https://code.visualstudio.com) (`brew install --cask visual-studio-code`) — or `nano`/`vi` | VS Code | Editing config + `~/.zshrc` |
| An agent CLI | Claude Code **or** Gemini CLI (below) | same | The brains |
| (For Gemini + Vertex) gcloud | `brew install --cask google-cloud-sdk` | `winget install Google.CloudSDK` | ADC auth |
| (Optional) GitHub CLI | `brew install gh` | `winget install GitHub.cli` | `gh` push/pull/branch |

---

## 1. Package manager

On macOS, install [Homebrew](https://brew.sh) first — every other install command on this page uses it:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

On Windows, `winget` ships with modern Windows; [Scoop](https://scoop.sh) is a good no-admin alternative.

## 2. A terminal (and optionally a nicer one)

Your OS terminal works fine. If you want tabs/splits and a snappier feel, [Ghostty](https://ghostty.org) is a nice modern emulator:

```bash
brew install --cask ghostty
```

It's optional. Launch it the way you launch any other app (Spotlight / Launchpad), not from the command line.

## 3. An editor and shell basics

You'll edit your config and your shell profile, so have an editor you're comfortable with. VS Code is the easy choice:

```bash
brew install --cask visual-studio-code   # gives you the `code` command
```

If you'd rather stay in the terminal, `nano` is the gentle option; `vi`/`vim` works too (`:wq` to save and quit).

**Know your shell.** Modern macOS defaults to **zsh** (profile: `~/.zshrc`); older setups and many Linux boxes use **bash** (`~/.bashrc`). Check with:

```bash
echo $SHELL
```

If your profile file doesn't exist yet, that's normal — create it before adding anything:

```bash
touch ~/.zshrc            # or ~/.bashrc
```

After you add lines to it (you will, in the next step), load them into your current session:

```bash
source ~/.zshrc           # or open a new terminal window
```

## 4. Authenticate your agent

Pick the one you're using.

### Claude Code

```bash
npm install -g @anthropic-ai/claude-code     # or: brew install claude
```

Then run `claude` and sign in. **Enterprise users:** your org may route Claude through Amazon Bedrock or Google Vertex instead of a direct login — check with whoever administers your AI tooling, because the personal login may be disabled for your corporate account.

### Gemini CLI

```bash
npm install -g @google/gemini-cli            # or: brew install gemini-cli
```

Keep it current — older builds fail in confusing ways and don't always auto-update:

```bash
brew upgrade gemini-cli                       # or: npm update -g @google/gemini-cli
```

**The corporate-account gotcha.** When you run `gemini` and log in with a *corporate* Google / Workspace account, you may hit:

> *"Failed to sign in. Your current account is not eligible for Gemini Code Assist for individuals."*

That's expected — the free individual tier isn't available to managed accounts. Use **Vertex AI** instead (see below).

### Gemini CLI via Vertex AI (enterprise path)

This is what most corporate users actually need. You'll need the **gcloud CLI**:

```bash
brew install --cask google-cloud-sdk
```

Authenticate with Application Default Credentials:

```bash
unset GOOGLE_API_KEY GEMINI_API_KEY          # clear any conflicting keys
gcloud auth login                            # your account
gcloud auth application-default login        # the credentials the CLI uses
```

Then tell Gemini CLI to use Vertex by adding these to your shell profile (`~/.zshrc` / `~/.bashrc`):

```bash
export GOOGLE_CLOUD_PROJECT="your-gcp-project-id"   # a project with the Vertex AI API enabled
export GOOGLE_CLOUD_LOCATION="us-central1"          # the region of your Vertex resources
export GOOGLE_GENAI_USE_VERTEXAI=true               # use Vertex, not the individual tier
```

`source ~/.zshrc`, start `gemini`, and run `/auth` → Vertex AI. A quick `yo` is the simplest "is it alive?" test. (First response can take a while; that's the model warming up, not a hang.)

> You get the **project ID** and **region** from your cloud/platform team. They're org-specific — see your organization's internal setup guide if it has one.

## 5. Corporate source control (if applicable)

To clone and push your org's repos you'll typically need **corporate GitHub access** — either link your personal GitHub account to the corporate org via SSO, or create a corp-only account. **Your platform / cloud team handles this**; the usual path is a service-request ticket plus a follow-up. The repo can't tell you the contact — ask internally.

The [GitHub CLI](https://cli.github.com) makes day-to-day git pleasant once you have access (you can just tell your agent to "push," "branch," etc.):

```bash
brew install gh && gh auth login
```

A tidy convention: keep all your clones under one folder, e.g. `~/git/`, and clone each repo into it.

---

## You're ready

With the above in place:

```bash
git clone https://github.com/yourusername/sourdough.ai.git ~/sourdough.ai
cd ~/sourdough.ai && ./install.sh        # Windows: powershell -ExecutionPolicy Bypass -File .\install.ps1
```

The installer runs a quick preflight and flags anything still missing. Then head to [getting-started.md](getting-started.md).
