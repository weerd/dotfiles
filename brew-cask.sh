#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Native Mac Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Brew Cask Setup
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Tapping caskroom formulae and installing Brew Cask..."
brew tap caskroom/cask
brew tap caskroom/versions     
brew install caskroom/cask/brew-cask



# Applications
# ------------------------------------------------------------------------------

applications=(

  # Development
  coderunner
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
  steam

)



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications instead of the default
# Cask directory location in /Users/$user/Applications.

printf "\n$INFO%s$RESET\n" "Installing applications..."
brew cask install --appdir="/Applications" ${applications[@]} 



# Update Alfred Search Scope
# ------------------------------------------------------------------------------
# Applications installed using Cask are symlinked to the /Applications folder, 
# so we need to update Alfred's search path to include the directory where these
# applications can actually be found.

printf "\n$INFO%s$RESET\n" "Updating Alfred search scope..."
brew cask alfred link
