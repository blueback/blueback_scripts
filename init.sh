#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }


# my aliases {
alias v="vim"
# }


# run script checker {
pushd "$HOME/blueback_scripts" > /dev/null
bash checker.sh
popd > /dev/null
# }


# add this folders to path {
export PATH="$HOME/blueback_scripts:${PATH}"
# }


# source sub-folders init.sh to path {
source "$HOME/blueback_scripts/scripts/init.sh"
# }


# add custom apps to path {
################################################################################
#   add custom apps using following template
################################################################################
# export PATH="$HOME/project1/build/bin:${PATH}"
# export PATH="$HOME/project2/build/bin:${PATH}"
################################################################################
# }


# add custom libs to ld_path {
################################################################################
#   add custom libs using following template
################################################################################
# export LD_LIBRARY_PATH="$HOME/project1/build/lib:${LD_LIBRARY_PATH}"
# export LD_LIBRARY_PATH="$HOME/project2/build/lib:${LD_LIBRARY_PATH}"
################################################################################
# }
