#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

check_directory() {
    items=$1

    #directory_path=$PWD
    #printf "current_directory : "
    #printf "$directory_path"
    #printf "\n"

    for item in *; do
        if [ "${items[$item]}" = "" ]; then
            items["$item"]="$item"

            #printf $item
            #printf "\n"

            if [ -d $item ]; then
                pushd $item > /dev/null
                check_directory
                popd > /dev/null
            fi
        else
            if [ "$item" != "init.sh" ]; then
                echo "Error: duplicate script names: $item"
                exit 1
            else
                printf "repeating $item"
                printf "\n"
                :
            fi
        fi
    done
}

check_directory_wrapper() {
    declare -A items
    check_directory $items
}

check_directory_wrapper
