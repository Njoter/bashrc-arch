
# ===================================================== #
#			SETTINGS			#
# ===================================================== #


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# === startup === #
# =============== #

fastfetch
#echo -e "Random CLI:"
#whatis $(\ls /usr/bin | shuf -n 1)


# === prompt === #
# ============== #

PS1='\n\[\e[38;5;131m\]\u\[\e[38;5;243m\]:\[\e[38;5;105m\]\s\[\e[38;5;224m\]\w\n\n\$\[\e[38;5;243m\] -> \[\e[0m\]'

# default prompt: PS1='[\u@\h \W]\$ '


# === environment === #
# =================== #

# path
export PATH="~/.cargo/bin:$PATH"
export PATH="~/Documents/bash-scripts-wip:$PATH"

# default apps
export EDITOR=nvim
export BROWSER=firefox
PKG_MANAGER=$(detect_pkg_manager)
export PKG_MANAGER


# === misc settings === #
# ===================== #

# Case insensitive TAB completion
bind 'set completion-ignore-case on'
