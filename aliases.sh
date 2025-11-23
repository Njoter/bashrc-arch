
# ===================================================== #
#			ALIASES 			                        #
# ===================================================== #


# === ls === #
alias ls='lsd -lAh --color=auto --group-directories-first'
alias lsd='lsd -lh --color=auto --group-directories-first'

# === navigation === #
alias ..="cd .."
alias ...="cd ../.."

# === xdg-open === #
alias open='xdg-open'

# === launcher === #
alias rofi='rofi -show drun -show-icons'

# === terminal === #
alias cl='clear'

# === grep === #
alias grep='grep --color=auto'

# === find === #
alias find="find 2> /dev/null"

# === vim === #
alias vim='nvim'

# === package management === #
alias install='install_pkg'
alias update='update_pkgs'
alias pkgsearch='search_for_pkg'

# === apt === #
alias apt='nala'

# === session === #
alias logout='pkill -u $USER'

# === ps === #
alias memlist='ps axac -o cmd:18,%mem,pid --sort=-%mem'
alias cpulist='ps axac -o cmd:18,%cpu,pid --sort=-%cpu'

# === fun stuff === #
alias randomcli='whatis $(\ls /usr/bin | shuf -n 1)'
alias weather='curl wttr.in/oslo'

# === System === #
alias :q="shutdown now"
alias space="df -h | grep Filesystem; df -h | grep /dev/nvme0n1p2"
