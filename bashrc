#History control section from:
#https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows

HISTSIZE=10000
HISTFILESIZE=20000

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

