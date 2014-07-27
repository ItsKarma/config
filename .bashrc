# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

# User specific PS1
HOST=`uname -n | cut -d "r" -f2`; export HOST
PS1='
${BOLD}${PWD}${REG}
${LOGNAME}(${HOSTNAME}):'; export PS1

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH

EDITOR=vim
export EDITOR

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
[ -f /usr/bin/virtualenvwrapper.sh ] && source /usr/bin/virtualenvwrapper.sh

# User specific alias'
alias l='ls -lrth'
alias ll='ls -lh'
alias la='ls -lah'
alias cdgit='cd ~/src/'
alias cdchef='cd ~/src/chef-repo'
alias gs='git status'
alias psj='ps -ef | grep java | gre -v grep'
alias psz='ps -ef | grep zabbix | gre -v grep'
