[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
nerdfetch

alias vi='nvim'
alias blender='./Downloads/blender-3.0.0-linux-x64/blender'
alias odinc='./Odin/odin'
alias clear='clear && nerdfetch'
eval "$(starship init bash)"
xset r rate 200 35
