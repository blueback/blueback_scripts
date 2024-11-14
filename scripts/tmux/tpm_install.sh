#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }


# create ~/.tmux/plugins {

tmux_plugin_path=$HOME/.tmux/plugins

# Create plugins path {
if [ ! -d $tmux_plugin_path ]; then
    echo "Creating directory $tmux_plugin_path ..."
    mkdir -p $tmux_plugin_path
else
    echo "Directory $tmux_plugin_path already exit!"
fi
# }

# checking if plugin tmp is already present {
if [ -d $tmux_plugin_path/tpm ]; then
    echo "ERROR: Directory $tmux_plugin_path/tpm already exit!"
    exit 1
fi
# }

# }


# download tmp {
git clone https://github.com/tmux-plugins/tpm $tmux_plugin_path/tpm
# }
