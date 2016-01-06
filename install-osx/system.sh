##########################################################
# General
##########################################################

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the sudden motion sensor (SMS)
sudo pmset -a sms 0

# Store screenshots on the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

##########################################################
# Keyboard
##########################################################

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

##########################################################
# Finder
##########################################################

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all windows by default
defaults write com.apple.finder FXPreferredViewStyle Clmv

killall Finder

##########################################################
# Docker
##########################################################

# Set the icon size items to 34 pixels
defaults write com.apple.dock tilesize -int 34

# Set the orientation to left
defaults write com.apple.dock orientation left

# Set Dock to auto-hide and remove the auto-hiding delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

killall Dock

##########################################################
# Terminal
##########################################################

# Enabling UTF-8 ONLY in Terminal.app and setting the Pro theme by default
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"

##########################################################
# Time Machine
##########################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

