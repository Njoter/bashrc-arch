
# ===================================================== #
#			~/.bashrc			#
# ===================================================== #

# These files are located in $HOME/.bashrc.d/
# Create a symlink to this file in $HOME
# These config files currently work with apt and pacman

# === source files === #
# ==================== #
if [ -d "$HOME/.bashrc.d" ]; then
    for script in "$HOME/.bashrc.d/"*; do
        if [ -f "$script" ] && [ -r "$script" ]; then
            source "$script"
        fi
    done
fi
