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

## 🚀 Quick Start

### Initial Setup (New Machine)

```bash
# Install chezmoi and apply dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply khoi/dotfiles-omarchy
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


## 📝 Notes

- Highly opinionated config files.
- Feel free to browse around and copy what u want.



