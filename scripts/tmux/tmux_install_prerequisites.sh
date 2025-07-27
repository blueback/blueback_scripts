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


# all prerequisites {
if [ ${IS_APT} -eq 1 ]; then
    sudo apt install libevent-dev ncurses-dev build-essential bison pkg-config xclip
else
    sudo pacman -S libevent ncurses base-devel bison pkgconf xclip
fi
# }
