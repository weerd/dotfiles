#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



source ./extras/colors



# Symlink Dotfiles
# ------------------------------------------------------------------------------
# Symlink necessary dotfiles into home directory.

# Symlinking Code: Do the thing, win the points!
# source ~/.bash_profile



# Create Code Directory
# ------------------------------------------------------------------------------
# This directory will house all code projects and repos from GitHub.

mkdir -p $HOME/Code



# Install Homebrew
# ------------------------------------------------------------------------------
# Check if Homebrew exists and if not install it.

if test ! $(which brew); then
  printf "\n$INFO%s$RESET\n" "Installing Homebrew..."
  ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
# @TODO: may need to change persmissions on this file to make executable.

printf "\n$INFO%s$RESET\n" "Running binary applications shell script..."
./mac_bins_installations.sh 



# Install non-Homebrew applications
# ------------------------------------------------------------------------------
# @TODO: may need to change persmissions on this file to make executable.

printf "\n$INFO%s$RESET\n" "Running native applications shell script..."
./mac_apps_installations.sh
