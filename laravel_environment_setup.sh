#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Homestead for Laravel
# ------------------------------------------------------------------------------



# Output Colors
# ------------------------------------------------------------------------------

ERROR=$(tput setaf 196)
SUCCESS=$(tput setaf 34)
RESET=$(tput sgr0)



# Check Dependencies
# ------------------------------------------------------------------------------
# Both VirtualBox and Vagrant are required to setup Homestead.

if test ! $(which virtualbox); then
  printf "\n$ERROR%s$RESET\n" "Please install VirtualBox to proceed."
  exit 1
fi

if test ! $(which vagrant); then
  printf "\n$ERROR%s$RESET\n" "Please install Vagrant to proceed."
  exit 1
fi



# Install Homestead Vagrant Box
# ------------------------------------------------------------------------------

# vagrant box add laravel/homestead
printf "\n$SUCCESS%s$RESET\n" "Homestead installed."




if [ -d "$HOME/Code" ]; then
  
fi

