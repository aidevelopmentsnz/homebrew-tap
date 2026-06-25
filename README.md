# AI Developments — Homebrew Tap

Homebrew casks for [AI Developments](https://github.com/aidevelopmentsnz) macOS apps.

## Usage

```sh
brew tap aidevelopmentsnz/tap
```

Then install any app:

```sh
brew install --cask --no-quarantine aidevelopmentsnz/tap/countdowner
brew install --cask --no-quarantine aidevelopmentsnz/tap/ssh-manager
```

> The apps are not yet signed/notarized, so `--no-quarantine` skips the Gatekeeper
> warning on first launch. Without it, right-click the app → **Open** → **Open** once.
> Apple Silicon Macs run them via Rosetta (auto-installed on first launch if needed).

## Apps

| Cask | Description |
|------|-------------|
| [`countdowner`](https://github.com/aidevelopmentsnz/countdowner) | Dark, timezone-aware countdown app with a menu-bar day counter |
| [`ssh-manager`](https://github.com/aidevelopmentsnz/ssh-manager) | Dark-themed SSH connection manager that opens connections in Terminal |

## Updating a cask

When a new app version ships, bump `version` and `sha256` in the cask file:

```sh
shasum -a 256 /path/to/App-X.Y.dmg
```
