#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Moom Settings Export
# ------------------------------------------------------------------------------


# https://manytricks.com/support/index.php?act=article&code=view&id=47
# https://manytricks.com/blog/?p=3049

root=$HOME/Code/dotfiles
moom=$HOME/Library/Preferences

source ~/Code/dotfiles/extras/colors



# Export Settings From System Preferences
# ------------------------------------------------------------------------------

if [ -f $moom/com.manytricks.Moom.plist ]
  then
    printf "\n$INFO%s$RESET\n" "Copying Moom settings from system preferences to dotfiles repo..."
    cp $moom/com.manytricks.Moom.plist $root/moom/settings/
fi

