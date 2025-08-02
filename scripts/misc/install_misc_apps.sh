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

# {
if [ ${IS_APT} -eq 1 ]; then
    sudo apt install tree
    sudo apt install make
    sudo apt install cmake
    sudo apt install htop
    sudo apt install ripgrep
    sudo apt install numactl
    sudo apt install python3
    sudo apt install python3-pip
else
    sudo pacman -S tree
    sudo pacman -S make
    sudo pacman -S cmake
    sudo pacman -S htop
    sudo pacman -S ripgrep
    sudo pacman -S numactl
    sudo pacman -S python3
    sudo pacman -S python3-pip
fi
# }
