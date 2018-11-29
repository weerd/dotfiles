#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Homebrew
# ------------------------------------------------------------------------------



source ./extras/colors



# Homebrew Package Manager
# ------------------------------------------------------------------------------
# Check if Homebrew exists and if not install it.

if [ ! $(which brew) ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  printf "\n$SUCCESS - %s$RESET\n" "Homebrew installed."
else
  printf "\n$INFO - %s$RESET\n" "Homebrew already installed, located in $(which brew)."
fi
