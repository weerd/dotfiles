#!/bin/zsh

# ------------------------------------------------------------------------------
# Create Directories
# ------------------------------------------------------------------------------



# Create Screen Captures Directory
# ------------------------------------------------------------------------------

if [ ! -d $HOME/"Screen Captures" ]; then
	mkdir -p $HOME/"Screen Captures"

	echo "Screen Captures directory created."
else
	echo "Screen Captures directory already exists."
fi
