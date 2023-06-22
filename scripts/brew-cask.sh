#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# Install Native Mac Applications
# ------------------------------------------------------------------------------



source ./extras/colors



# Brew Cask Setup
# ------------------------------------------------------------------------------

# https://github.com/Homebrew/homebrew-cask
# Cask scripts can be found in /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask/Casks
brew tap homebrew/cask

printf "\n$INFO - %s$RESET\n" "Tapped homebrew/cask for list of Cask scripts and installed Cask CLI."

# https://github.com/Homebrew/homebrew-cask-versions
# Alternate Cask scripts can be found in /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask-versions/Casks
brew tap homebrew/cask-versions

printf "\n$INFO - %s$RESET\n" "Tapped homebrew/cask-versions for list of alternate versiosn of Cask scripts."



# Applications
# ------------------------------------------------------------------------------

applications=(

  adobe-creative-cloud
  alfred
  amazon-music
  beamer
  coderunner
  dropbox
  evernote
  github
  gog-galaxy
  google-chrome-canary
  hazel
  imageoptim
  iterm2
  kap
  kindle
  opera
  postman
  send-to-kindle
  steam
  # sequel-pro
  simple-comic
  spotify
  tableplus
  vagrant
  visual-studio-code
  vlc

)

require_approval=(

  # Mac will block installation so will need to approve the extension @see: https://developer.apple.com/library/archive/technotes/tn2459/_index.html
  virtualbox

)



# Install Applications
# ------------------------------------------------------------------------------
# The applications will be installed in /Applications directory.

brew cask install ${applications[@]}

printf "\n$INFO - %s$RESET\n" "Cask applications install completed."



# Cleanup
# ------------------------------------------------------------------------------

brew cleanup

printf "\n$INFO - %s$RESET\n" "Cleaning up Homebrew."
