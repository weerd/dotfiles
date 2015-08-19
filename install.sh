#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Main Installation
# ------------------------------------------------------------------------------



# Define installation directory
dir="$HOME/installation"

# Make directory and retrieve dotfiles repository
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/weerd/dotfiles.git
cd dotfiles

# Begin the setup bootstrapping process
bash bootstrap.sh
