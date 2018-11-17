#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Main Installation
# ------------------------------------------------------------------------------



# Setup Code Directory
# ------------------------------------------------------------------------------
# Create "~/Code" directory that will house all code projects and repos, then 
# download the dotfiles repo and run the "bootstrap.sh" file.

dir="$HOME/Code"

mkdir -p $dir && cd $dir
git clone git@github.com:weerd/dotfiles.git
cd dotfiles


# Begin the setup bootstrapping process.
# bash bootstrap.sh  // stopping execution for now to help make updates.
echo 'Execution of bootstrap.sh was not performed.'
