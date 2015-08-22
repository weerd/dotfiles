#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



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
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi



# Install Binary Packages With Homebrew
# ------------------------------------------------------------------------------
echo "Running brew shell script..."
./brew.sh



# Install Native Mac Applications With Cask
# ------------------------------------------------------------------------------
echo "Running brew cask shell script..."
./brew-cask.sh



# Install non-Homebrew binary packages
# ------------------------------------------------------------------------------
# (may need to change persmissions on files to make executable; confirm this...)

echo "Running binary applications shell script..."
./mac_bins_installations.sh 



# Install non-Homebrew applications
# ------------------------------------------------------------------------------
# (might need to change persmissions on file to make executable)

echo "Running native applications shell script..."
./mac_apps_installations.sh
