#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Binary Mac Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Homebrew Setup
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Updating & upgrading Homebrew..."
brew update
brew upgrade

printf "\n$INFO%s$RESET\n" "Tapping mac duplicate applications formulae..."
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

printf "\n$INFO%s$RESET\n" "Installing binaries..."
brew install ${binaries[@]}



# Cleanup
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Cleaning up Homebrew..."
brew cleanup

