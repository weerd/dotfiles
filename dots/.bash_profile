#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Bash Profile
# ------------------------------------------------------------------------------



source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/exports
source ~/.bash/prompt

if [ -e ~/.bash/environment_variables ]; then
  source ~/.bash/environment_variables
fi

if [ -e ~/.bash/local_aliases ]; then
  source ~/.bash/local_aliases
fi
