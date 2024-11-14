#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# TODO: improve this to check before writing
echo "[diff]" >> $HOME/.gitconfig
echo "	tool = nvimdiff" >> $HOME/.gitconfig
echo "[merge]" >> $HOME/.gitconfig
echo "	tool = nvimdiff" >> $HOME/.gitconfig
