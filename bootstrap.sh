#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



source ./extras/colors



printf "\n$INFO%s$RESET\n" "Beginning setup bootstrapping..."



# Create Directories
# ------------------------------------------------------------------------------
# Create directories for setup.

printf "\n$INFO%s$RESET\n" "1) Creating necessary directories:"

./scripts/create_directories.sh



# Copy & Move Files
# ------------------------------------------------------------------------------
# Copy and move files into specified directory that can not be symlinked.

printf "\n$INFO%s$RESET\n" "2) Copying and moving files into specified directories:"

./scripts/copy_move.sh



# Symlink Dotfiles
# ------------------------------------------------------------------------------
# Symlink necessary dotfiles into home directory.

printf "\n$INFO%s$RESET\n" "3) Symlinking dotfiles into specified directories:"

./scripts/symlinks.sh



# Install Homebrew
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "4) Installing Homebrew:"

./scripts/homebrew.sh



# Install Binary Packages With Homebrew
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "5) Installing binary application packages with Homebrew:"

./scripts/brew-cellar.sh



# Install Native Mac Applications With Cask
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "6) Installing native applications with Homebrew Cask."

./scripts/brew-cask.sh


# Install non-Homebrew Binary Packages
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "7) Installing binary application packages."

./scripts/bins_installations.sh



# Install non-Homebrew Applications
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "8) Installing native applications."

./scripts/apps_installations.sh



# source ~/.bash_profile

# Bootsrap Process Completed
# ------------------------------------------------------------------------------
printf "\n$SUCCESS%s$RESET\n" "Bootstrapping process completed! Enjoy your new setup 🍻"
