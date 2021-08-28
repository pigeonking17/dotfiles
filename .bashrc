#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias scst='feh ~/Pictures/latest_screenshot.png'
alias du='dust'
alias cat='bat'
alias ls='exa'
alias pylint='pylint --max-line-length=79'

PS1='\[\033[0;32m\][ \u@\h \W ]\$ \[\033[0m\]'
export PS1

. "$HOME/.cargo/env"
TZ='Asia/Bangkok'
export TZ
