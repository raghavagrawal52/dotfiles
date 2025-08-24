#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/home/lucifer/.opencode/bin:$PATH

#shell prompt
PS1='\[\e[32m\]\u\[\e[0m\]:\w\$ '
