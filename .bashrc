#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# systemd-run --slice=idle.slice --shell
PS1='[\u@\h \W]\$ '

