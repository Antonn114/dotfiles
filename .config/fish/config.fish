alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias e='vim'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ...'
alias cls='clear'
alias c='clear'
alias ko='konsole -e'
alias st4='/opt/sublime_text/sublime_text'

alias oldvim="/usr/bin/vim"
alias vim="/usr/bin/nvim"
alias config='/usr/bin/git --git-dir=/home/anton/.cfg/ --work-tree=/home/anton'

starship init fish | source

set fish_greeting
