#!/usr/bin/env zsh


# ------------------------------------------------------------------------------
# Install Homebrew
# ------------------------------------------------------------------------------



# Homebrew Package Manager
# ------------------------------------------------------------------------------
# Check if Homebrew exists and if not install it.

if [ ! type brew &>/dev/null ]; then
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   
   print "Homebrew installed."
else
   print "Homebrew already installed."
fi
