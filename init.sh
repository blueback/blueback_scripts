#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }


# my aliases {
#alias v="vim"

# nvim aliases {
alias vim="nvim"
alias v="nvim"
# }

# git diff {
alias gdf="git difftool -y"
# }

alias top="htop"

# }


# run script checker {
pushd "$HOME/blueback_scripts" > /dev/null
bash checker.sh
popd > /dev/null
# }


# add all the sub-directories recursively to path {
add_sub_paths() {
    export PATH="$PWD:${PATH}"

    for item in *; do
        if [ -d $item ]; then
            # Directory names can repeat in the hierarchy
            pushd $item > /dev/null
            add_sub_paths
            popd > /dev/null
        fi
    done
}

add_sub_paths_wrapper() {
    pushd "$HOME/blueback_scripts" > /dev/null
    add_sub_paths
    popd > /dev/null
    #echo $PATH
}

add_sub_paths_wrapper
# }


# add custom apps to path {
################################################################################
#   add custom apps using following template
################################################################################
export PATH="$HOME/.local/neovim/bin:${PATH}"
################################################################################
# }


# add custom libs to ld_path {
################################################################################
#   add custom libs using following template
################################################################################
export LD_LIBRARY_PATH="$HOME/.local/neovim/lib:${LD_LIBRARY_PATH}"
################################################################################
# }


# Using vi binding for shell {
set -o vi
bindkey -v
# }
