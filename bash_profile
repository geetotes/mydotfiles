# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export PATH="$PATH:~/drush:/usr/local/bin"
# User specific aliases and functions
export PS1="\[\033[;36m\]\u\[\033[;32m\]@\h:\[\033[;35m\]\w\[\033[1;33m\]>\[\033[0m\] "
alias vi="vim"
export PATH=/Applications/MAMP/Library/bin/:$PATH
