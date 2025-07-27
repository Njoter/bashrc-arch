
# ===================================================== #
#			FUNCTIONS			                        #
# ===================================================== #


# === Detect package manager === #
# ============================== #
function detect_pkg_manager() {
	if command -v apt > /dev/null 2>&1; then
		echo "apt"
	elif command -v pacman >/dev/null 2>&1; then
		echo "pacman"
	fi
}

# === Update packages === #
# ======================= #
function update_pkgs() {
    case "$PKG_MANAGER" in
        apt)    sudo apt update && sudo apt upgrade ;;
        pacman) sudo pacman -Syu ;;
        *)      echo "Package manager not supported by this function:
                $PKG_MANAGER"
                >&2 ;;
    esac
}

# === Install packages === #
# ======================== #
function install_pkg() {
    case "$PKG_MANAGER" in
        apt)    sudo apt install "$@" ;;
        pacman) sudo pacman -S "$@" ;;
        *)      echo "Package manager not supported by this function:
                $PKG_MANAGER"
                >&2 ;;
    esac
}

# === Search for packages === #
# =========================== #
function search_for_pkg() {
    case "$PKG_MANAGER" in
        apt)    apt search "$@" ;;
        pacman) pacman -Ss "$@" ;;
        *)      echo "Package manager not supported by this function:
                $PKG_MANAGER"
                >&2 ;;
        esac
}

# === List all programs in /usr/bin and preview info === #
# ====================================================== #
function exelist() {
    \ls /usr/bin | fzf --preview 'whatis {}' --layout=reverse
}

# === List all installed packages with fzf and preview with pacman -Qil === #
# ========================================================================= #
function aptlist() {
    apt list --installed		\
    | fzf --preview 'apt show {}'    \
    --layout=reverse
}

# === List scripts in /usr/local/bin with fzf and preview with bat === #
# ==================================================================== #
function scriptlist() {
    dirpath="/usr/local/bin/"

    for i in $(\ls $dirpath); do echo "$dirpath$i"; done    \
    | fzf --preview 'bat --color=always {}'                 \
    --layout=reverse
}

# === Get total % CPU usage === #
# ============================= #
function cpusum() {
    sum=$(mpstat                    \
            | sed '4!d'             \
            | tr -s ' '             \
            | cut -d ' ' -f 4-12    \
            | sed 's/ /+/g'         \
            | bc)

    echo "$sum%"
}

# === Get CPU temperature === #
# =========================== #
function cputemp() {
    temp=$(sensors                                  \
            | grep "Package id 0"                   \
            | sed 's/Package id 0:[[:space:]]*+//'  \
            | cut -d ' ' -f1)

    echo $temp
}
