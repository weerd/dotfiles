#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Sublime Text Setup
# ------------------------------------------------------------------------------


root=$HOME/Code/dotfiles
sublime=$HOME/Library/Application\ Support/Sublime\ Text\ 3

source ~/Code/dotfiles/extras/colors



# Symlink Sublime Text
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Symlinking Sublime Text application..."
ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl



# Install Package Control
# ------------------------------------------------------------------------------
# @see https://packagecontrol.io/installation

printf "\n$INFO%s$RESET\n" "Installing Package Control for Sublime Text..."
cd "$sublime/Installed Packages/"
curl -L -o "Package Control.sublime-package" "https://packagecontrol.io/Package%20Control.sublime-package"



# Symlink Settings
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Symlinking Package Control settings to user directory..."
ln -s "$root/sublime/settings/Package Control.sublime-settings" "$sublime/Packages/User"

printf "\n$INFO%s$RESET\n" "Symlinking Keymap settings to user directory..."
ln -s "$root/sublime/settings/Default (OSX).sublime-keymap" "$sublime/Packages/User"

printf "\n$INFO%s$RESET\n" "Symlinking Markdown settings to user directory..."
ln -s "$root/sublime/settings/Markdown.sublime-settings" "$sublime/Packages/User"

# @todo Something is missing and incorrect causing ST to error out when launching due to theme
# mkdir -p "$sublime/Packages/Colorsublime - Themes"
# cp -u "$root/sublime/themes/DeerAntlerDark.tmTheme.cache" "$sublime/Packages/Colorsublime - Themes"
# mkdir -p "$sublime/Cache/Colorsublime - Themes"
# cp -u "$root/sublime/themes/DeerAntlerDark.tmTheme.cache" "$sublime/Cache/Colorsublime - Themes"

printf "\n$INFO%s$RESET\n" "Symlinking Sublime settings to user directory..."
ln -s "$root/sublime/settings/Preferences.sublime-settings" "$sublime/Packages/User"



# Copying Snippets
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Copying snippets to user directory..."
cp -u "$root/sublime/snippets"/* "$sublime/Packages/User"
