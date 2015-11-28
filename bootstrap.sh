#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



source ./extras/colors



# Symlink Dotfiles
# ------------------------------------------------------------------------------
# Symlink necessary dotfiles into home directory.

dir="$HOME/Code"

printf "\n$INFO%s$RESET\n" "Symlinking dotfiles..."
ln -s $dir/dotfiles/.bash ~/.bash
ln -s $dir/dotfiles/.bash_profile ~/.bash_profile
ln -s $dir/dotfiles/.gitconfig ~/.gitconfig
source ~/.bash_profile


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
# @TODO: may need to change permissions on this file to make executable.

printf "\n$INFO%s$RESET\n" "Running binary applications shell script..."
./mac_bins_installations.sh 



# Install non-Homebrew applications
# ------------------------------------------------------------------------------
# @TODO: may need to change persmissions on this file to make executable.

printf "\n$INFO%s$RESET\n" "Running native applications shell script..."
./mac_apps_installations.sh
