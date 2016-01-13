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

# go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin

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
alias cdscripts='cd ~/scripts'
alias cdgit='cd ~/src'
alias cdsrc='cd ~/src'
alias cdlid='cd ~/src/leadid'
alias cdchef='cd ~/src/leadid/chef-repo'
alias cddevops='cd ~/src/leadid/devops'
alias cdchef='cd ~/src/leadid/chef-repo'
alias cdpacker='cd ~/src/leadid/devops/packer'
alias gs='git status'
alias psj='ps -ef | grep java | grep -v grep'
alias psz='ps -ef | grep zabbix | grep -v grep'
