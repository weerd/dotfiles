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

  adobe-creative-cloud
  alfred
  amazon-cloud-drive
  amazon-music
  beamer
  coderunner
  dropbox
  evernote
  google-chrome-canary
  handbrake
  hazel
  imageoptim
  iterm2
  opera
  send-to-kindle
  steam
  sequel-pro
  transmission
  transmit
  vagrant
  virtualbox
  vlc
  
  # Others To Include
  # airfoil
  # brackets
  # clamxav
  # dash
  # dbappx
  # github
  # gitx
  # helium
  # mou
  # brew cask install --appdir="/Applications" phpstorm // DoSomething
  # rdio
  # spotify

)



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications instead of the default
# Cask directory location in /Users/$user/Applications.

printf "\n$INFO%s$RESET\n" "Installing applications..."
brew cask install --appdir="/Applications" ${applications[@]} 



# Cleanup
# ------------------------------------------------------------------------------

printf "\n$INFO%s$RESET\n" "Cleaning up Homebrew Casks..."
brew cask cleanup
