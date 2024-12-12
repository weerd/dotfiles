#!/bin/zsh


# ------------------------------------------------------------------------------
# Symlinks
# ------------------------------------------------------------------------------



# Link Dotfiles Into Home Directory
# ------------------------------------------------------------------------------
# 
# @see https://www.man7.org/linux/man-pages/man1/bash.1.html#CONDITIONAL_EXPRESSIONS
# -e is true if file exists.
# -h is true if file exists and is a symbolic link.
# ln -sf creates a soft (symbolic) link, and forces the command to overwrite a 
# file that alread exists.

dir="$HOME/Code"

if [ ! -e ~/.zshenv ] || [ ! -h ~/.zshenv ]; then
	ln -sf $dir/dotfiles/dots/zsh/.zshenv ~/.zshenv

	echo "Created symlink for .zshenv file."
fi

if [ ! -e ~/.gitconfig ] || [ ! -h ~/.gitconfig ]; then
	ln -sf $dir/dotfiles/dots/.gitconfig ~/.gitconfig

	echo "Created symlink for .gitconfig file."
fi

if [ ! -e ~/.gitignore ] || [ ! -h ~/.gitignore ]; then
	ln -sf $dir/dotfiles/dots/.gitignore ~/.gitignore

	echo "Created symlink for .gitignore file."
fi

echo "Dotfiles were symlinked into the home directory."
