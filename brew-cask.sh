#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Native Mac Applications
# ------------------------------------------------------------------------------



# Brew Cask Setup
# ------------------------------------------------------------------------------

echo "Tapping caskroom formulae and installing Brew Cask..."
brew tap caskroom/cask
brew tap caskroom/versions     
brew install caskroom/cask/brew-cask



# Applications
# ------------------------------------------------------------------------------

applications=(

  # Development
  iterm2
  imageoptim
  transmit
  virtualbox
  vagrant

  # Productivity
  alfred
  dropbox
  evernote
  hazel

  # Browswers
  opera
  firefox
  google-chrome
  google-chrome-canary

  # Miscellaneous
  beamer
  vlc
  handbrake
  transmission
  adobe-creative-cloud
  # amazon-cloud-drive (issues with installation)
  amazon-music
  send-to-kindle

)



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications instead of the default
# Cask directory location in /Users/$user/Applications.

echo "Installing applications..."
brew cask install --appdir="/Applications" ${applications[@]} 
