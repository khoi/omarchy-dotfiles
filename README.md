```
                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀
```

# Omarchy Dotfiles

> My personal dotfiles for [Omarchy](https://omarchy.org) - An opinionated, beautiful Arch Linux setup based on Hyprland.

Managed with [chezmoi](https://chezmoi.io) for easy deployment across machines.

## 🖥️ System Information

- **Distribution**: Omarchy Linux (Arch-based)
- **Window Manager**: Hyprland (Wayland compositor)
- **Session Manager**: uwsm (Universal Wayland Session Manager)
- **Terminal**: Ghostty
- **Shell**: Bash
- **Editor**: Neovim (LazyVim)
- **Prompt**: Starship

## 📦 What's Included

### Development Environment
- **Neovim**: Complete LazyVim configuration with custom plugins
- **Git**: Global config, allowed signers, and global ignore patterns
- **Mise**: Version manager for multiple languages/tools
- **Lazygit**: Terminal UI for git
- **Lazydocker**: Terminal UI for Docker

### Hyprland & Window Management
- **Hyprland**: Custom keybindings, NVIDIA optimizations, monitors config
- **Waybar**: Status bar with custom styling
- **Walker**: Application launcher
- **Mako**: Notification daemon (theme-linked)
- **SwayOSD**: On-screen display for volume/brightness
- **Hypridle/Hyprlock/Hyprsunset**: Idle, lock screen, and night light

### Terminal Emulators
- **Ghostty**: Primary terminal emulator
- **Kitty**: Alternative terminal
- **Alacritty**: Lightweight terminal option

### System Integration
- **Starship**: Cross-shell prompt with custom configuration
- **Btop**: System resource monitor
- **Fastfetch**: System information tool
- **Fontconfig**: Font rendering preferences
- **Fcitx5**: Input method framework (for multilingual input)
- **Environment.d**: Session-wide environment variables

### Omarchy Customizations
- **Branding**: Custom about/screensaver text
- **Hooks**: Theme and font change hooks (samples)
- **Browser flags**: Chromium/Brave launch flags

### Shell & Utilities
- `.bashrc`: Shell configuration with Omarchy defaults
- `.bash_profile/.bash_logout`: Login/logout scripts
- `.XCompose`: Custom compose key sequences
- `.ssh/config`: SSH client configuration (1Password agent integration)

## 📊 Statistics

- **Total tracked files**: 115
- **Configuration directories**: 25+
- **Key configs**: 40+ files across hypr, nvim, mise, git, and more

## 🚀 Quick Start

### Initial Setup (New Machine)

```bash
# Install chezmoi and apply dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply khoi/dotfiles-omarchy
```

### Daily Usage

```bash
# Check status
chezmoi status

# See what would change
chezmoi diff

# Add a new file
chezmoi add ~/.config/newapp/config.toml

# Edit a tracked file
chezmoi edit ~/.bashrc

# Apply changes
chezmoi apply

# Update from remote
chezmoi update
```

### Navigate to Source Directory

```bash
chezmoi cd
```

## 🗂️ Repository Structure

```
~/.local/share/chezmoi/
├── .chezmoiignore              # Files/patterns to ignore
├── .chezmoiscripts/            # Install and setup scripts
├── dot_bashrc                  # Shell configuration
├── dot_XCompose                # Compose key sequences
├── dot_config/                 # XDG config directory
│   ├── nvim/                   # Neovim configuration
│   ├── hypr/                   # Hyprland configs
│   ├── waybar/                 # Status bar
│   ├── git/                    # Git configuration
│   ├── mise/                   # Version manager
│   └── ...                     # And more
├── private_dot_claude/         # Claude Code settings
└── private_dot_ssh/            # SSH config (private)
```

## 🔒 Security Notes

- SSH private keys are **NOT** tracked (only `config` file)
- Sensitive configs are stored in `private_*` directories
- API keys should be templated or stored in environment variables
- `.chezmoiignore` excludes browser data, caches, and credentials

## 🎨 Theme Management

Omarchy uses a dynamic theme system:
- Current theme: **Kanagawa** (symlinked via `~/.config/omarchy/current/theme`)
- Themes are stored in `~/.local/share/omarchy/themes/`
- Theme symlinks are **not tracked** in dotfiles (they point to system locations)
- Custom hooks in `~/.config/omarchy/hooks/` can respond to theme changes

## 🛠️ Customization

### Hyprland
- Monitor configs: `~/.config/hypr/monitors.conf`
- Keybindings: `~/.config/hypr/bindings.conf`
- NVIDIA vars: Bottom of `~/.config/hypr/hyprland.conf`

### Shell
- Custom aliases/functions: `~/.bashrc`
- Default apps: `~/.config/uwsm/default`
- Environment variables: `~/.config/uwsm/env`

### Neovim
- Plugins: `~/.config/nvim/lua/plugins/`
- Keymaps: `~/.config/nvim/lua/config/keymaps.lua`
- Options: `~/.config/nvim/lua/config/options.lua`

## 🔧 Maintenance

### Updating Packages

```bash
# Update Omarchy
omarchy update

# Update mise-managed tools
mise upgrade

# Update Arch packages
yay -Syu
```

### Cleaning Up

```bash
# Remove old backups
rm ~/.config/**/*.bak*

# Clean chezmoi
chezmoi purge
```

## 📝 Notes

- This setup is optimized for **NVIDIA GPUs** (see Hyprland env vars)
- Uses **uwsm** for proper Wayland session management
- Integrates with **1Password** for SSH authentication
- Follows **Omarchy conventions** while adding personal customizations

## 🔗 References

- [Omarchy](https://omarchy.org) - The base Arch Linux distribution
- [Omarchy GitHub](https://github.com/basecamp/omarchy) - Source code
- [Chezmoi](https://chezmoi.io) - Dotfiles manager
- [Hyprland](https://hyprland.org) - Wayland compositor
- [LazyVim](https://lazyvim.org) - Neovim distribution

## 📜 License

This repository contains personal configurations. Feel free to use as reference or inspiration for your own dotfiles.

---

**Last updated**: 2025-10-19
