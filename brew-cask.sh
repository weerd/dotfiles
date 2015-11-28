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

  # Browsers
  opera
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
  
  # Others To Include
  # phpstorm
  # kindle
  # spotify
  # brackets
  # clamxav
  # transmit
  # github
  # rdio
  # sequelpro
  # caffeine
  # mou
  # gitx
  # helium
  # airfoil
  # dash
  # dbappx
  # lastpass

)



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications instead of the default
# Cask directory location in /Users/$user/Applications.

printf "\n$INFO%s$RESET\n" "Installing applications..."
brew cask install --appdir="/Applications" ${applications[@]} 

