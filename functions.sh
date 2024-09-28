
# ---------Functions-----------#


# List all programs in /usr/bin and preview info
function exelist() {
    \ls /usr/bin | fzf --preview 'whatis {}' --layout=reverse
}

# List all installed packages with fzf and preview with pacman -Qil
function paclist() {

    pacman -Qq                          \
    | fzf --preview 'pacman -Qil {}'    \
    --layout=reverse
}

# List scripts in /usr/local/bin with fzf and preview with bat
function scriptlist() {
    
    dirpath="/usr/local/bin/"

    for i in $(\ls $dirpath); do echo "$dirpath$i"; done    \
    | fzf --preview 'bat --color=always {}'                 \
    --layout=reverse
}

# Full update - pacman and paru
function fullup() {

    pacup                                   \
    && echo -e "\npacman upgrade finished." \
    && echo -e "starting paru upgrade...\n" \
    && parup
}

# Get total % CPU usage
function cpusum() {

    sum=$(mpstat                    \
            | sed '4!d'             \
            | tr -s ' '             \
            | cut -d ' ' -f 4-12    \
            | sed 's/ /+/g'         \
            | bc)

    echo "$sum%"
}

# Get CPU temperature
function cputemp() {

    temp=$(sensors                                  \
            | grep "Package id 0"                   \
            | sed 's/Package id 0:[[:space:]]*+//'  \
            | cut -d ' ' -f1)

    echo $temp
}
