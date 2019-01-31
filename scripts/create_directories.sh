#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Create Directories
# ------------------------------------------------------------------------------



source ./extras/colors



# Create Screenshots Directory
# ------------------------------------------------------------------------------

if [ ! -d $HOME/Screenshots ]; then
	mkdir -p $HOME/Screenshots
	
	printf "\n$SUCCESS - %s$RESET\n" "Screenshots directory created."
else
	printf "\n$INFO - %s$RESET\n" "Screenshots directory already exists."
fi
