# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PS1="\[\033[;36m\]\u\[\033[;32m\]@\h:\[\033[;35m\]\w\[\033[1;33m\]>\[\033[0m\] "

export SVN_EDITOR=vim

alias sitesvn="svn info | egrep '^URL: (.*)' | sed 's/URL\:\ //'"
alias sf='./symfony --color'
