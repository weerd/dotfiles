#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Symlinks
# ------------------------------------------------------------------------------



source ./extras/colors



# Link Dotfiles Into Home Directory
# ------------------------------------------------------------------------------

dir="$HOME/Code"

printf "\n$INFO%s$RESET\n" "Symlinking dotfiles..."
ln -s $dir/dotfiles/dots/.bash ~/.bash
ln -s $dir/dotfiles/dots/.bash_profile ~/.bash_profile
ln -s $dir/dotfiles/dots/.gitconfig ~/.gitconfig
source ~/.bash_profile
