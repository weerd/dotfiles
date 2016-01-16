#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Moom Settings Import
# ------------------------------------------------------------------------------


# https://manytricks.com/support/index.php?act=article&code=view&id=47
# https://manytricks.com/blog/?p=3049

root=$HOME/Code/dotfiles
moom=$HOME/Library/Preferences

source ~/Code/dotfiles/extras/colors



# Import Settings From System Preferences
# ------------------------------------------------------------------------------

if [ -f $root/moom/settings/com.manytricks.Moom.plist ]
  then
    printf "\n$INFO%s$RESET\n" "Copying Moom settings from dotfiles repo to system preferences..."
    cp $root/moom/settings/com.manytricks.Moom.plist $moom/
    
    # restart System settings
    killall cfprefsd
fi
