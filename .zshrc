#######################################################
# INIT PREZTO
#######################################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#######################################################
# NVM
#######################################################
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh


#######################################################
# iTerm confg
#######################################################

# Disable history sharing between sessions
unsetopt inc_append_history
unsetopt share_history

#######################################################
# ALIASES
#######################################################
alias do='docker'
alias doco='docker-compose'
alias doma='docker-machine'

# Docker: Delete untagged images
alias ddui='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

#######################################################
# ENV VARIABLES
#######################################################
export PATH=~/bin:$PATH
export CHROME_BIN="/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app/Contents/MacOS/Google Chrome"
