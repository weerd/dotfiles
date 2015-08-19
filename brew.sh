#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Binary Mac Applications
# ------------------------------------------------------------------------------



# Homebrew Setup
# ------------------------------------------------------------------------------

echo "Updating & upgrading Homebrew..."
brew update
brew upgrade

echo "Tapping mac duplicate applications formulae..."
brew tap homebrew/dupes



# Binaries
# ------------------------------------------------------------------------------

binaries=(

  # Unix Tools
  coreutils
  findutils
  bash
  bash-completion
  grep

  # General Tools
  graphicsmagick
  git
  node
  tree

)



# Install Binaries
# ------------------------------------------------------------------------------

echo "Installing binaries..."
brew install ${binaries[@]}



# Cleanup
# ------------------------------------------------------------------------------

echo "Cleaning up Homebrew..."
brew cleanup
