# Linux System Configuration Assistant

## System Context
I am running a Linux system and need help with configuration, setup, and administration tasks. Please assist me following Linux best practices and respecting system defaults.

## Current System Information
- **Distribution**: Omarchy Linux (Arch-based)
- **Window Manager**: Hyprland
- **Working Directory**: Check with `pwd` before making assumptions

## Core Principles

### CRITICAL RULES:
1. **Add/destroy file changes via chezmoi after modifications**
2. **NEVER modify system files without explicit permission**
3. **Respect the separation between system defaults and user customization**
4. **Check for existing configurations before creating new ones**
5. **Follow the principle of least privilege** - Use sudo only when necessary
6. **Document all changes made to the system**

### Configuration Hierarchy (DO NOT VIOLATE):
1. User-specific configs in `~/.config/` (preferred)
3. System-wide configs in `/etc/` (requires sudo, avoid when possible)
4. Default configs in `/usr/share/` (NEVER modify)

## Best Practices

### Before Making Any Changes:
1. **Investigate current state:**
   ```bash
   # Check if configuration already exists
   ls -la ~/.config/[application]/
   find ~ -name "*[application]*" -type f 2>/dev/null
   
   # Look for example/default files
   find /usr/share -name "*[application]*" -type f 2>/dev/null
   find /etc -name "*[application]*" -type f 2>/dev/null
   ```

2. **Test changes:**
   - Make incremental changes
   - Test after each change
   - Have a rollback plan

## Common Tasks Approach

### Installing Software:
1. Check if available in distribution's package manager first
2. Use AUR (for Arch-based) as second option
3. Manual installation as last resort
4. Document installation method for future updates

### Service Management:
```bash
# System services (requires sudo)
systemctl status/start/stop/enable/disable [service]

# User services (no sudo needed)
systemctl --user status/start/stop/enable/disable [service]
```

### Configuration Files:
1. Use proper format (YAML, TOML, JSON, INI) as expected by application
2. Include comments explaining customizations
3. Keep original structure intact
4. Use includes/sources when possible instead of modifying main files

### Environment Variables:
```bash
# Session-wide (preferred)
~/.config/environment.d/*.conf

# Shell-specific
~/.bashrc or ~/.zshrc

# System-wide (avoid)
/etc/environment
```

## Safety Guidelines

### Always:
- Check file permissions after creating/modifying configs
- Verify syntax before applying configuration changes
- Keep a session open when modifying network/SSH configs
- Test commands with `echo` or `--dry-run` first when available
- Use version control for important configs

### Never:
- Run commands with sudo unless absolutely necessary
- Pipe curl/wget directly to bash without reviewing
- Modify files in /usr/ or /boot/ without explicit need
- Delete files without understanding their purpose
- Disable security features without good reason

## Debugging Approach

When something isn't working:
1. Check logs:
   ```bash
   journalctl -xe                    # System logs
   journalctl --user -xe             # User logs
   journalctl -u [service] -f        # Follow specific service
   ```

2. Verify permissions:
   ```bash
   ls -la [file]
   namei -l [path]
   ```

3. Check processes:
   ```bash
   ps aux | grep [process]
   systemctl status [service]
   ```

4. Test configuration:
   ```bash
   [application] --config-test
   [application] -t
   ```

## System Information Commands

```bash
# Distribution info
cat /etc/os-release
uname -a

# Hardware info
lscpu
lsmem
lsblk
lspci
lsusb

# Network info
ip addr
ss -tulpn
nmcli device status

# Disk usage
df -h
du -sh /*

# Running services
systemctl list-units --state=running
systemctl --user list-units --state=running

# Package management (Arch-based)
pacman -Q               # List installed packages
pacman -Qs [search]     # Search installed packages
pacman -Ss [search]     # Search available packages
```

## Performance and Resource Management

### Monitor resources:
```bash
htop or btop           # Interactive process viewer
iostat -x 1            # I/O statistics
vmstat 1               # Virtual memory statistics
```

## Dotfiles Management with Chezmoi

My dotfiles are managed with chezmoi

### After modifying configuration files
Always add/destroy changes using chezmoi after file modifications:

This applies to:
- Editing configuration files
- Creating new configuration files
- Deleting configuration files
- Modifying CLAUDE.md itself
- Any file operation in tracked directories

Use `chezmoi add` and `chezmoi destroy` or other chezmoi commands. Never commit anything in the chezmoi directory.


## Documentation

After making changes:
1. Document what was changed and why
2. Note any dependencies or requirements
3. Include rollback procedures
4. Save relevant commands for future reference

## Final Notes

- Prefer simple solutions over complex ones
- Use native tools when possible
- Follow distribution-specific conventions
- Test in a safe environment when possible
- Ask for clarification if requirements are unclear

## References

My macOS dotfiles can be found at git@github.com:khoi/dotfiles.git, feel free to clone it to /tmp to inspect when the users mention it.

omarchy source code can also be cloned to /tmp/omarchy from https://github.com/basecamp/omarchy


Please help me with my Linux system configuration and administration tasks following these guidelines.
