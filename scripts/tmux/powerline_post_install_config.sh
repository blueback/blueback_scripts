#!/bin/bash
# Modeline {
#    vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }


# plugin_path {
tmux_powerline_plugin_path=$HOME/.config/tmux/plugins/tmux-powerline
powerline_config_path=$HOME/.config/tmux-powerline/
# }

# configure powerline {

# generate config {
conf_generate_script_path=$tmux_powerline_plugin_path/generate_config.sh
$conf_generate_script_path
# }

# create new theme {
mkdir -p $powerline_config_path/themes
cp $tmux_powerline_plugin_path/themes/default.sh $powerline_config_path/themes/my-theme.sh
vim $powerline_config_path/themes/my-theme.sh
# }

# modify config {
mv $powerline_config_path/config.sh.default $powerline_config_path/config.sh
vim $powerline_config_path/config.sh
# }

# }


