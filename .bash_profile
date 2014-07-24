# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

set -o vi

# User specific PS1

## Without Color
#PS1="\n\w\n\u@\h\\$ "
## With Color
if [ $UID -eq 0 ]
then
  #root user color
  UC="${RED}"
else
  #normal user color
  UC="${BWHITE}"
fi
#default color
DF="${BWHITE}"
PS1="\n\w\n${UC}\u${DF}@\h\\$ "
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
alias chchef='cd ~/src/chef-repo/'
alias gs='git status'
