#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval eval -- "$(/usr/bin/starship init bash --print-full-init)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/sleepy/.lmstudio/bin"
# End of LM Studio CLI section

