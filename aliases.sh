
# ===================================================== #
#			ALIASES 			#
# ===================================================== #


# === ls === #
alias ls='lsd -lAh --color=auto --group-directories-first'
alias lsd='lsd -lh --color=auto --group-directories-first'

# === navigation === #
alias ..="cd .."
alias ...="cd ../.."

# === xdg-open === #
alias open='xdg-open'

# === terminal === #
alias cl='clear'

# === grep === #
alias grep='grep --color=auto'

# === find === #
alias find="find 2> /dev/null"

# === vim === #
alias vim='nvim'

# === configs === #
alias bashrc='vim ~/.bashrc'
alias bshsettings='vim ~/.bashrc.d/settings.sh'
alias bshaliases='vim ~/.bashrc.d/aliases.sh'
alias bshfunctions='vim ~/.bashrc.d/functions.sh'
alias vimrc='vim ~/.vim/vimrc'
# alias aweconfig='vim ~/.config/awesome/rc.lua'
# alias swayconfig='vim ~/.config/sway/config'

# === package management === #
alias install='install_pkg'
alias update='update_pkgs'
alias pkgsrch='search_for_pkg'

# === apt === #
alias apt='nala'

# === session === #
alias logout='pkill -u $USER'

# === ps === #
alias memlist='ps axac -o cmd:18,%mem,pid --sort=-%mem'
alias cpulist='ps axac -o cmd:18,%cpu,pid --sort=-%cpu'

# === fun stuff === #
alias randomcli='whatis $(\ls /usr/bin | shuf -n 1)'

# === System === #
alias :q="shutdown now"
alias space="df -h | grep Filesystem; df -h | grep /dev/nvme0n1p2"
