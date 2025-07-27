#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }


# check apt vs pacman {
IS_APT=1
if command -v apt &> /dev/null; then
    echo "apt is installed (Debian/Ubuntu-based system)."
    # Add apt-specific commands here
    # Example: sudo apt update
	IS_APT=1
elif command -v pacman &> /dev/null; then
    echo "pacman is installed (Arch Linux-based system)."
    # Add pacman-specific commands here
    # Example: sudo pacman -Syu
	IS_APT=0
else
    echo "Neither apt nor pacman found. Unknown package manager."
	IS_APT=0
fi
# }


# install prerequisites {
bash tmux_install_prerequisites.sh
# }


# install tmux {
if [ ${IS_APT} -eq 1 ]; then
    sudo apt install tmux
else
    sudo pacman -S tmux
fi
# }


# setup tmux in $HOME/.config/tmux/tmux.conf {

tmux_conf_path=$HOME/.config/tmux

# Create .config path {
if [ ! -d $tmux_conf_path ]; then
    echo "Creating directory $tmux_conf_path ..."
    mkdir -p $tmux_conf_path
else
    echo "Directory $tmux_conf_path already exit!"
fi
# }

# Create tmux.conf if not already there {
if [ ! -f $tmux_conf_path/tmux.conf ]; then
    echo "Creating $tmux_conf_path/tmux.conf ..."
    touch $tmux_conf_path/tmux.conf
else
    echo "ERROR: $tmux_conf_path/tmux.conf already exist!"
    exit 1
fi
# }

# }


# install tmp {
bash tpm_install.sh
# }


# config tmux.conf by sourcing this script package {
echo "source-file ~/blueback_scripts/scripts/tmux/tmux.conf" >> $tmux_conf_path/tmux.conf
# }
