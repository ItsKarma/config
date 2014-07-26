# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

# User specific PS1
# COLORS
Color_Off='\e[0m'
RED='\[\e[01;31m\]'
CYAN='\[\e[00;36m\]'
ORANGE='\[\e[00;33m\]'
PURPLE='\[\e[00;35m\]'
GREEN='\[\e[00;32m\]'
DF='\[\e[00;37m\]' #default color
if [ $UID -eq 0 ]
then
  #root user color RED
  UC=$RED
else
  #normal user color CYAN
  UC=$CYAN
fi
H1=$DF$(hostname | cut -c1-5)
H2=$(hostname | cut -c6)
H3=$(hostname | cut -c7)
if [ $H3 = p ]
then
  H2=$GREEN$(hostname | cut -c6)
  H3=$GREEN$(hostname | cut -c7)
else
  H2=$ORANGE$(hostname | cut -c6)
  H3=$ORANGE$(hostname | cut -c7)
fi
H4=$PURPLE$(hostname | cut -c8-10)
H5=$DF$(hostname | cut -c11-13)$DF
HOST=$H1$H2$H3$H4$H5
PS1="${DF}\n\w\n${UC}\u${DF}@$HOST\\$ "
export PS1

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

EDITOR=vim
export EDITOR

# User specific alias'
alias l='ls -lrth'
alias ll='ls -lh'
alias la='ls -lah'
alias cdgit='cd ~/src/'
alias cdchef='cd ~/src/chef-repo'
alias gs='git status'
alias psj='ps -ef | grep java | gre -v grep'
alias psz='ps -ef | grep zabbix | gre -v grep'
