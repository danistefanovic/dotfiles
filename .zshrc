#######################################################
# INIT PREZTO
#######################################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#######################################################
# INIT DOCKER
######################################################
eval $(docker-machine env default)

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
alias doma='docker-machine'
alias doco='docker-compose'

#######################################################
# ENV VARIABLES
#######################################################
export PATH=~/bin:$PATH
export CHROME_BIN="/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app/Contents/MacOS/Google Chrome"
