WORKSPACE_PATH='c:/workspace'

######################################################
# ALIASES
######################################################
alias ..='cd ..'
alias home='cd ~'
alias work='cd ${WORKSPACE_PATH}'

alias ls='ls -h --color'
alias ll='ls -la'
alias lsd='ls -ltr'         # Sort by date, most recent last
alias lss='ls -lSr'         # Sort by size, biggest last

######################################################
# EXPORT OPTIONS
######################################################
export LS_COLORS="$LS_COLORS:di=01;35:fi=01;33"
