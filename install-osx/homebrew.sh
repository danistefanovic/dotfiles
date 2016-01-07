#!/bin/sh

command_exists () {
    type "$1" &> /dev/null ;
}

brew_install () {
    # http://stackoverflow.com/a/20802425/358804
    if [ -z "brew ls --versions $1" ]; then
        brew install $1
    else
        brew upgrade $1
    fi
}

cask_install () {
    if [ -z "brew cask info $1 | grep \"No available Cask\"" ]; then
        brew cask install $1
    else
        echo "- $1 already installed"
    fi
}

if command_exists brew; then
    echo "Updating brew..."
    brew update
    echo "...brew updated"
else
    echo "Installing brew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "...brew installed"
fi

##########################################################
# Brew packages
##########################################################
echo "Installing brew packages..."
brew_install brew-cask
brew_install node
brew_install nvm
brew_install zsh
echo "...brew packages installed"

##########################################################
# Brew Cask packages
##########################################################
echo "Installing brew cask packages..."
cask_install atom
cask_install dockertoolbox
cask_install dropbox
cask_install firefox
cask_install google-chrome
cask_install iterm2
cask_install keepassx
cask_install psequel
cask_install sequel-pro
cask_install sketch
cask_install skype
cask_install spotify

# Quicklook plugins
cask_install qlmarkdown
cask_install qlstephen
cask_install quicklook-json
echo "...brew cask packages installed"

##########################################################
# Cleanup
##########################################################
echo "Cleaning up brew/cask..."
brew cleanup
brew cask cleanup
echo "...brew/cask cleaned up"

