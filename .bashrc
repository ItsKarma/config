# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

# User specific PS1
if [ $UID -eq 0 ]
then
  #root user color RED
  UC='\[\e[01;31m\]'
else
  #normal user color CYAN
  UC='\[\e[00;36m\]'
fi
#default color
DF='\[\e[00;37m\]'
PS1="${DF}\n\w\n${UC}\u${DF}@\h\\$ "
export PS1

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

EDITOR=vim
export EDITOR

# User specific alias'
alias l='ls -lrth'
alias ll='ls -l'
alias la='ls -la'
alias cdgit='cd ~/src/'
alias gs='git status'
