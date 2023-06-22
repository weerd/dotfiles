#!/usr/bin/env zsh


# ------------------------------------------------------------------------------
# Main Installation
# ------------------------------------------------------------------------------



# Setup Code Directory
# ------------------------------------------------------------------------------
# Create "~/Code" directory that will house all code repositories, then 
# download this dotfiles repository and run the "bootstrap.sh" file.

CODE_DIRECTORY="$HOME/Code"

# If "Code" does not exist or is not a directory, create it.
if [ ! -d $CODE_DIRECTORY ]
then
	mkdir -p $CODE_DIRECTORY
fi

cd $CODE_DIRECTORY

# If "dotfiles" does not exist or is not a directory, create it.
if [ ! -d $CODE_DIRECTORY/dotfiles ]
then
	git clone git@github.com:weerd/dotfiles.git
fi

cd dotfiles

# Make all bash script files in the repository executable.
find ./ -type f -name "*.sh" -exec chmod 755 {} \;

# Begin the setup bootstrapping process.
zsh bootstrap.sh
