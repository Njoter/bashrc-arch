
# -------------Aliases----------------- #


# ls
alias ls='lsd -lAh --color=auto --group-directories-first'

# navigation
alias ..="cd .."
alias ...="cd ../.."

# terminal
alias cl='clear'

# grep
alias grep='grep --color=auto'

# find
alias find="find 2> /dev/null"

# vim to nvim
alias vim='nvim'

# configs
alias bashrc='vim ~/.bashrc'
alias aweconfig='vim ~/.config/awesome/rc.lua'
alias vimrc='vim ~/.vim/vimrc'

# pacman
alias pacup='sudo pacman -Syu --color "always"'
alias parup='paru -Syu'
alias pacstall='sudo pacman -S'
alias pacrm='sudo pacman -Rns'
alias parrm='paru -Rns'
alias pacs='pacman -Ss'
alias pars='paru -Ss'

# session
alias logout='pkill -u $USER'

# ps
alias memlist='ps axac -o cmd:18,%mem,pid --sort=-%mem'
alias cpulist='ps axac -o cmd:18,%cpu,pid --sort=-%cpu'

#fun stuff
alias randomcli='whatis $(\ls /usr/bin | shuf -n 1)'

#System
alias :q="shutdown now"
