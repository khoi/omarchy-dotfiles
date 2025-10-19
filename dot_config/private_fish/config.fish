set fish_greeting

set -g async_prompt_functions _pure_prompt_git
set -g pure_enable_single_line_prompt false
set -g pure_separate_prompt_on_error true

# Global
set -gx EDITOR nvim
set -gx GHQ_ROOT ~/ghq
set -gx TLDR_AUTO_UPDATE_DISABLED 1
set -gx XDG_CONFIG_HOME ~/.config

# FZF
set -Ux FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix'
set -Ux FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
if command -v fzf &>/dev/null
    fzf --fish | source
end

# Aliases
alias o xdg-open
alias v nvim
alias vim nvim
alias cat bat
alias lg lazygit
alias ac "claude --dangerously-skip-permissions"

# eza aliases (if available)
if command -v eza &>/dev/null
    alias ls 'eza --color=always --group-directories-first --icons'
    alias ll 'eza -la --octal-permissions --group-directories-first --icons'
    alias l 'eza -bGF --header --git --color=always --group-directories-first --icons'
    alias lm 'eza -bGF --header --git --color=always --group-directories-first --icons --sort=modified'
    alias la 'eza --long --all --group --group-directories-first --icons'
    alias lx 'eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'
    alias lS 'eza -1 --color=always --group-directories-first --icons'
    alias lt 'eza --tree --level=2 --color=always --group-directories-first --icons'
    alias l. "eza -a | grep -E '^\.'"
end

# PATH
fish_add_path ~/.bin
fish_add_path ~/.local/bin

# zoxide
if command -v zoxide &>/dev/null
    zoxide init fish | source
end

# mise
if command -v mise &>/dev/null
    mise activate fish | source
end
