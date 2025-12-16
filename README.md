# Chocolatey Package for Amos

This repository contains the Chocolatey package for [Amos](https://github.com/apodacaa/amos), a minimal Bubble Tea (Go) TUI for journal and todo management.

## Installation

Add this repository as a Chocolatey source and install:

```powershell
# Add the custom source (one-time setup)
choco source add -n=amos -s="https://github.com/apodacaa/chocolatey-amos"

# Install amos
choco install amos

# Upgrade to latest version
choco upgrade amos
```

## Manual Installation

1. Download the `.nupkg` file from this repository
2. Install using Chocolatey:

```powershell
choco install amos -s .
```

## Uninstall

```powershell
choco uninstall amos
```

## Package Structure

- `amos.nuspec` - Package metadata and version information
- `tools/chocolateyInstall.ps1` - Installation script
- `tools/chocolateyUninstall.ps1` - Uninstallation script

## Building the Package

To build the `.nupkg` file locally (requires Chocolatey):

```powershell
choco pack
```

## About Amos

Amos is a brutalist TUI for managing journal entries and todos with:

- Fast, keyboard-driven interface
- Tag-based filtering (`@tagname`)
- Date filtering (today, yesterday, last N days, date ranges)
- Entry-linked and standalone todos
- Two themes: Brutalist (monochrome) and Cyberpunk (neon colors)

See the [main repository](https://github.com/apodacaa/amos) for more details.

## License

See [LICENSE](https://github.com/apodacaa/amos/blob/main/LICENSE) in the main repository.
