export PS1="\[\033[;36m\]\u\[\033[;32m\]@\h:\[\033[0:35m\]\w\[\033[1;33m\]>\[\033[0m\] "

test -r /sw/bin/init.sh && . /sw/bin/init.sh

##
# Your previous /Users/lee/.profile file was backed up as /Users/lee/.profile.macports-saved_2011-02-07_at_14:01:44
##
# MacPorts Installer addition on 2011-02-07_at_14:01:44: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=/Users/lee/.gem/ruby/1.8/bin:$PATH

#Ok maybe this isn't so pretty
#export TERM=linux


export SVN_EDITOR=vim

alias dnsflush="sudo dscacheutil -flushcache"
alias sitesvn="svn info | egrep '^URL: (.*)' | sed 's/URL\:\ //'"
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias mysql='/opt/local/bin/mysql5'
alias siteupdate='/Users/lee/ee_bash/siteupdate'
alias ls='ls -G'
alias ls='ls -lahFG'
alias sf='./symfony --color'
alias svn='/opt/local/bin/svn'
