#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Sublime Text Setup
# ------------------------------------------------------------------------------


root="$HOME/Code/dotfiles"
# sublime="$HOME/Library/Application Support"

source ~/Code/dotfiles/extras/colors



# Symlink Sublime Text
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Symlinking Sublime Text application..."
ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl



# Install Package Control
# ------------------------------------------------------------------------------
# @see https://packagecontrol.io/installation

printf "\n$INFO%s$RESET\n" "Installing Package Control for Sublime Text..."
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
curl -L -o "Package Control.sublime-package" "https://packagecontrol.io/Package%20Control.sublime-package"



# Copy Settings
# ------------------------------------------------------------------------------
# @todo debating whether best to copy or just symlink the files? Maybe copy snippets, symlink settings?

printf "\n$INFO%s$RESET\n" "Copying Sublime Text settings..."
cp -u $root/sublime/settings/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

cp -u $root/sublime/snippets/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

cp $root/sublime/settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
