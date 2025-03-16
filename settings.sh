
# -------------Settings-----------#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --------------- Startup -----------------------------------------------

fastfetch
echo -e "Random CLI:"
whatis $(\ls /usr/bin | shuf -n 1)

# --------------- Environment -------------------------------------------

export EDITOR=nvim
export BROWSER=zen
export PATH="~/.cargo/bin:$PATH"
export PATH="~/Documents/bash-scripts-wip:$PATH"

# --------------- Misc settings ------------------------------------------

# Case insensitive TAB completion
bind 'set completion-ignore-case on'

# VI commands
# set -o vi
# bind 'set show-mode-in-prompt on'


# --------------- Prompt ---------------------------------------------

# PS1='[\u@\h \W]\$ '

PS1='\n\[\e[38;5;131m\]\u\[\e[38;5;243m\]:\[\e[38;5;105m\]\s\[\e[38;5;224m\]\w\n\n\$\[\e[38;5;243m\] -> \[\e[0m\]'
