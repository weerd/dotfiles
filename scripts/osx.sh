#!/usr/bin/env bash


# ------------------------------------------------------------------------------
# OS X Customizations
# ------------------------------------------------------------------------------



source ./extras/colors



# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# General UI/UX
# ------------------------------------------------------------------------------

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName



# Finder
# ------------------------------------------------------------------------------

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show window status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Set prefs for showing a few different volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Save screenshots to the Screenshots directory
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Show external disks on desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Hide hard disks on desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false

# Show connected servers on desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true

# Show removable media on desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set Home directory as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
# Other available options include: `PfVo`, `PfHm`, `PfDe`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show Sidebar items
defaults write com.apple.sidebarlists systemitems -dict-add ShowEjectables -bool true
defaults write com.apple.sidebarlists systemitems -dict-add ShowRemovable -bool true
defaults write com.apple.sidebarlists systemitems -dict-add ShowServers -bool true
defaults write com.apple.sidebarlists systemitems -dict-add ShowHardDisks -bool true


# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true



# Dock
# ------------------------------------------------------------------------------

# Set the icon size of Dock items to 46 pixels
defaults write com.apple.dock tilesize -int 46

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Show indicator for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true



# Dashboard & Spaces
# ------------------------------------------------------------------------------

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false



# Mission Control
# ------------------------------------------------------------------------------

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1



# Desktop & Screen Saver
# ------------------------------------------------------------------------------

# Ask for password after 5 seconds
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# Set Screen Saver: Flurry
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName -string "Flurry" path -string "/System/Library/Screen Savers/Flurry.saver" type -int 0


# Hot Corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Top left screen corner → Disable screen saver
defaults write com.apple.dock wvous-tl-corner -int 6
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Start screen saver
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → Dashboard
defaults write com.apple.dock wvous-bl-corner -int 7
defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom right screen corner → Desktop
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0



# Input Peripherals & Accessories
# ------------------------------------------------------------------------------

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Secondary click:
# Possible values: OneButton, TwoButton, TwoButtonSwapped
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string TwoButton

# @TODO: Figure out how to set mouse Tracking Speed
# @TODO: Figure out how to set keyboard shortcut for Spotlight search to be Option + Space

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40



# Safari
# ------------------------------------------------------------------------------

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true



# Kill affected applications
for app in \
	"Activity Monitor" \
	"cfprefsd" \
	"Dock" \
	"Finder" \
	"Safari" \
	"Terminal"; do
	killall "${app}" > /dev/null 2>&1
done

printf "\n$INFO%s$RESET\n" "OSX configurations completed. Note that some of these changes require a logout/restart to take effect."
