#######################################################
# INIT PREZTO
#######################################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
