#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Native Mac Applications
# ------------------------------------------------------------------------------



# Create temporary directory to store disk image files
mkdir ~/installation_temp
cd ~/installation_temp


# Sublime Text 3 (beta) Installation
# ------------------------------------------------------------------------------

curl -L -o "Sublime Text 3.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
rm "Sublime Text 3.dmg"



# Browsers that will use the 1Password extension cannot be installed via 
# brew-cask and thus are installed directly via the following scripts and placed 
# in the /Applications directory:

# Chrome Installation
# ------------------------------------------------------------------------------

curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg



# Firefox Installation
# ------------------------------------------------------------------------------

curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount -nobrowse Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm Firefox.dmg



# Delete temporary directory.
rmdir ~/installation_temp
