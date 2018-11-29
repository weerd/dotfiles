#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Copy & Move
# ------------------------------------------------------------------------------



source ./extras/colors



# Copy & Move Files Into Specified Directory
# ------------------------------------------------------------------------------

dir="$HOME/Code"

if [ ! -e ~/.ssh/config ]; then
	cp $dir/dotfiles/dots/.ssh/config ~/.ssh/config

	printf "\n$INFO - %s$RESET\n" "Copied SSH Config into home directory."
else
	printf "\n$INFO - %s$RESET\n" "SSH Config already exists in home directory."
fi
