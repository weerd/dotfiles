#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



source ./extras/colors



# Copy & Move Files
# ------------------------------------------------------------------------------
# Copy and move files into specified directory that can not be symlinked.

./copy_move.sh



# Symlink Dotfiles
# ------------------------------------------------------------------------------
# Symlink necessary dotfiles into home directory.

./symlinks.sh



# Initial Setup
# ------------------------------------------------------------------------------
# Create directory to place screenshots

mkdir -p $HOME/Screenshots



# Install Homebrew
# ------------------------------------------------------------------------------
# Check if Homebrew exists and if not install it.

if test ! $(which brew); then
  printf "\n$INFO%s$RESET\n" "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi



# Install Binary Packages With Homebrew
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Running brew shell script..."
./brew.sh



# Install Native Mac Applications With Cask
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Running brew cask shell script..."
./brew-cask.sh



# Install non-Homebrew binary packages
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Running binary applications shell script..."
./mac_bins_installations.sh 



# Install non-Homebrew applications
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Running native applications shell script..."
./mac_apps_installations.sh
