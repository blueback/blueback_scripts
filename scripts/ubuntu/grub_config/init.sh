#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# add this folders to path {
export PATH="$HOME/blueback_scripts/scripts/ubuntu/grub_config:${PATH}"
# }

# source sub-folders init.sh to path {
source "$HOME/blueback_scripts/scripts/ubuntu/grub_config/boot_configurations/init.sh"
# }
