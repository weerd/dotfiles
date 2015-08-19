#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bootstrap
# ------------------------------------------------------------------------------



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
# (might need to change persmissions on file to make executable)

echo "Running binary applications shell script..."
./mac_bins_installations.sh 



# Install non-Homebrew applications
# ------------------------------------------------------------------------------
# (might need to change persmissions on file to make executable)

echo "Running native applications shell script..."
./mac_apps_installations.sh
