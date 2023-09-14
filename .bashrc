#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

zsh
. "$HOME/.cargo/env"
export PATH=/home/dnat/.local/bin:/home/dnat/.cargo/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/home/dnat/.dotnet/tools:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
