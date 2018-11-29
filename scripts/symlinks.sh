#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Symlinks
# ------------------------------------------------------------------------------



source ./extras/colors



# Link Dotfiles Into Home Directory
# ------------------------------------------------------------------------------

dir="$HOME/Code"

if [ ! -d ~/.bash ]; then
	ln -s $dir/dotfiles/dots/.bash ~/.bash
fi

if [ ! -e ~/.bash_profile ]; then
	ln -s $dir/dotfiles/dots/.bash_profile ~/.bash_profile
fi

if [ ! -e ~/.gitconfig ]; then
	ln -s $dir/dotfiles/dots/.gitconfig ~/.gitconfig
fi

if [ ! -e ~/.gitignore ]; then
	ln -s $dir/dotfiles/dots/.gitignore ~/.gitignore
fi

printf "\n$INFO - %s$RESET\n" "Dotfiles were symlinked into the home directory."
