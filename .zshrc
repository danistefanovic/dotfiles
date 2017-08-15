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
# VIM bindings
#######################################################

# Enable VIM bindings
bindkey -v

# Add some "standard" bindings
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# Reduce the delay between the modes
export KEYTIMEOUT=1

#######################################################
# ENV VARIABLES
#######################################################
export PATH=~/bin:$PATH
export CHROME_BIN="/opt/homebrew-cask/Caskroom/google-chrome/latest/Google Chrome.app/Contents/MacOS/Google Chrome"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
