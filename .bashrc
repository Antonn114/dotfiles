#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export DISPLAY=:0.0
fish
alias config='/usr/bin/git --git-dir=/home/anton/.cfg/ --work-tree=/home/anton'
