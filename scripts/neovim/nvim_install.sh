#!/bin/bash
# Modeline {
#     vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
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


# install build dependencies {
if [ ${IS_APT} -eq 1 ]; then
    sudo apt-get install ninja-build gettext cmake unzip curl build-essential
else
    sudo pacman -S ninja gettext cmake unzip curl base-devel
fi
# }


# download neovim {
download_path=$HOME/Downloads

if [ ! -d $download_path ]; then
    echo "ERROR: Folder Downloads is not present at $download_path!"
    exit 1
fi

nvim_download_path=$download_path/neovim

if [ -d $nvim_download_path ]; then
    echo "ERROR: neovim is already present in downloads folder $nvim_download_path!"
    exit 1
fi

echo "INFO: Downloading neovim at $nvim_download_path ..."
git clone https://github.com/neovim/neovim $nvim_download_path

echo "INFO: Entering directory $nvim_download_path ..."
pushd $nvim_download_path > /dev/null

# check installation path {
local_directory=$HOME/.local

if [ ! -d $local_directory ]; then
    echo "ERROR: local directory $local_directory is not present!"
    exit 1
fi

nvim_install_path=$local_directory/neovim/
if [ -d $nvim_install_path ]; then
    echo "ERROR: neovim install path $nvim_install_path already exits!"
    exit 1
fi
# }


echo "INFO: Starting building neovim ..."
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=$nvim_install_path

echo "INFO: finally installing neovim ..."
make install

# }


# install neovim using apt {
#sudo apt-get install neovim
#sudo apt-get install python3-neovim
# }

# clone neovim config {
config_path=$HOME/.config

if [ ! -d $config_path ]; then
    echo "ERROR: config path $config_path is not present!"
    exit 1
fi

nvim_config_path=$config_path/nvim
if [ -d $nvim_config_path ]; then
    echo "ERROR: neovim config $nvim_config_path already exists!"
    exit 1
fi

git clone https://github.com/blueback/neovim_setup.git $HOME/.config/nvim
# }
