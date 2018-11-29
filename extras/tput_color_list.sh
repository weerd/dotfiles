#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Visualize Available Color Codes
# ------------------------------------------------------------------------------



# Color List
# ------------------------------------------------------------------------------
# Run this script to visualize a list of available tput colors and their codes.

for i in {0..255}; do 
  tput setab $i; 
  printf " %s      " "$i";
  tput setab 0;
done;

printf "\n"