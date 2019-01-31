#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Homestead for Laravel
# ------------------------------------------------------------------------------



source ./extras/colors



# Check Dependencies
# ------------------------------------------------------------------------------
# Both VirtualBox and Vagrant are required to setup Homestead.

if [ ! $(which virtualbox) ]; then
  printf "\n$ERROR - %s$RESET\n" "Please install VirtualBox to proceed."
  exit 1
fi

if [ ! $(which vagrant) ]; then
  printf "\n$ERROR - %s$RESET\n" "Please install Vagrant to proceed."
  exit 1
fi



# Install Homestead Vagrant Box
# ------------------------------------------------------------------------------

vagrant box add laravel/homestead



# Setup Homestead
# ------------------------------------------------------------------------------

if [ ! -d "$HOME/Code" ]; then
  printf "\n$ERROR%s$RESET\n" "Please create a 'Code' directory in ~/."
  exit 1
fi

git clone git@github.com:laravel/homestead.git $HOME/Code/homestead

cd $HOME/Code/homestead && bash init.sh

printf "\n$SUCCESS%s$RESET\n" "Homestead has been properly installed. Now go build some cool stuff in Laravel!"
