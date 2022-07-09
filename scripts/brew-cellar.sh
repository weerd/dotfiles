#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Binary Mac Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Homebrew Setup
# ------------------------------------------------------------------------------

brew update

printf "\n$INFO - %s$RESET\n" "Updated Homebrew."

brew upgrade

printf "\n$INFO - %s$RESET\n" "Upgraded Homebrew."



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

  # Miscellaneous
  mas
  youtube-dl
  
)



# Install Binaries
# ------------------------------------------------------------------------------

brew install ${binaries[@]}

printf "\n$INFO - %s$RESET\n" "Installed binary packages."



# Cleanup
# ------------------------------------------------------------------------------

brew cleanup

printf "\n$INFO - %s$RESET\n" "Cleaning up Homebrew."

