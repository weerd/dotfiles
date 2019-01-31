#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Main Installation
# ------------------------------------------------------------------------------



# Setup Code Directory
# ------------------------------------------------------------------------------
# Create "~/Code" directory that will house all code projects and repos, then 
# download this dotfiles repo and run the "bootstrap.sh" file.

dir="$HOME/Code"

# If Code does not exist or is not a directory, create it.
if [ ! -d $dir ]
then
	mkdir -p $dir
fi

cd $dir

# If dotfiles does not exist or is not a directory, create it.
if [ ! -d $dir/dotfiles ]
then
	git clone git@github.com:weerd/dotfiles.git
fi

cd dotfiles

# Make all bash script files in the repository executable.
find ./ -type f -name "*.sh" -exec chmod 755 {} \;

# Begin the setup bootstrapping process.
bash bootstrap.sh
