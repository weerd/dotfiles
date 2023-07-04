#!/usr/bin/env zsh


# ------------------------------------------------------------------------------
# Zshrc
# ------------------------------------------------------------------------------


# Exports
# ------------------------------------------------------------------------------

# @see https://unix.stackexchange.com/a/608921
export GPG_TTY=$TTY

# export PATH="/usr/local/opt/node@16/bin:$PATH"
export PATH="/usr/local/sbin:$PATH" # brew executables path


# Shell Options
# ------------------------------------------------------------------------------

# Change directories when path entered without specifying 'cd'
setopt autocd


# Zsh Profile
# ------------------------------------------------------------------------------


# source ~/.zsh/config/aliases # OLD
source $HOME/Code/dotfiles/dots/zsh/config/aliases
# source ~/.zsh/config/prompt # OLD
source $HOME/Code/dotfiles/dots/zsh/config/prompt
# source ~/.zsh/config/bindings
# source ~/.zsh/config/extensions # @TODO: script needs to create the config/packages directory that is gitignored


# Zsh Version
# ------------------------------------------------------------------------------

echo zsh v$ZSH_VERSION
