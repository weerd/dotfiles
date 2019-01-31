#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Sublime Text Snippets Import
# ------------------------------------------------------------------------------


root=$HOME/Code/dotfiles
sublime=$HOME/Library/Application\ Support/Sublime\ Text\ 3

source ~/Code/dotfiles/extras/colors



# Import Snippets
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Importing snippets from dotfiles repository to user directory..."
cp -u "$root/sublime/snippets"/* "$sublime/Packages/User"
