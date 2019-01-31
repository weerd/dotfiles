#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Optional Native Mac Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Optional Applications
# ------------------------------------------------------------------------------
# These applications are not installe as part of the initnal bootstrap process
# but this script can be run anytime after initial setup.

applications=(

	handbrake
	transmission
	transmit
)

# Others To Include
# airfoil
# brackets
# clamxav
# dash
# dbappx
# gitx
# helium
# mou
# rdio
# spotify



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications directory.

brew cask install ${applications[@]}

printf "\n$INFO - %s$RESET\n" "Cask applications install completed."



# Cleanup
# ------------------------------------------------------------------------------

brew cleanup

printf "\n$INFO - %s$RESET\n" "Cleaning up Homebrew."
