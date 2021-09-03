#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alF'
alias replay='obs --startreplaybuffer --minimize-to-tray'
PS1='[\u@\h \W]\$ '
