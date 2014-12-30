# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi

# User specific PS1
export HOST=$(hostname -s)
export PS1='
${BOLD}${PWD}${REG}
${LOGNAME}($HOST):'

# User specific environment and startup programs
export PATH=$PATH:$HOME/bin
export EDITOR=vim

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
[ -f /usr/bin/virtualenvwrapper.sh ] && source /usr/bin/virtualenvwrapper.sh

# Unlimited History! MUAHAHAHA
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%m-%d-%R %r] "

# User specific alias'
alias l='ls -lrth'
alias ll='ls -lh'
alias la='ls -lah'
alias cl='clear'
alias cdgit='cd ~/src/'
alias cdchef='cd ~/src/chef-repo'
alias gs='git status'
alias psj='ps -ef | grep java | grep -v grep'
alias psz='ps -ef | grep zabbix | grep -v grep'
