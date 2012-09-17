#Set screen window title to hostname
#This script goes in bash_profile of target servers
case "$TERM" in
  screen)
  PROMPT_COMMAND='echo -ne "\033k$HOSTNAME\033\\"'
  ;;
esac
