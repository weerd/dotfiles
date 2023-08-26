# ------------------------------------------------------------------------------
# Zsh RC
# ------------------------------------------------------------------------------
#
# zshrc - Diego Lorenzo
#
# The /etc/zshrc file will be run first if it exists and then this file is run.
#
# This file runs in the following shell environments:
# - Login shell
# - Interactive Shell
# - Terminal shell



zshDir="$HOME/Code/dotfiles/dots/zsh"



# Exports
# ------------------------------------------------------------------------------

# export PATH="/usr/local/opt/node@16/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH" # brew executables path



# Shell Options
# ------------------------------------------------------------------------------

# Change directories when path entered without specifying 'cd'
setopt autocd



#
# ------------------------------------------------------------------------------

source $zshDir/config/prompt
source $zshDir/config/aliases
source $zshDir/config/exports
# source ~/.zsh/config/bindings
# source ~/.zsh/config/extensions # @TODO: script needs to create the config/packages directory that is gitignored



# ZSH Version
# ------------------------------------------------------------------------------

echo macOS version $(sw_vers -productVersion) \| build $(sw_vers -buildVersion)

echo zsh v$ZSH_VERSION
