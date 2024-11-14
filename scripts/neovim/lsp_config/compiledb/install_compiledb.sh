#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# Compiledb for compile_commands.json (used by clangd) {
#
# Steps to build
# 1. git clone https://github.com/nickdiego/compiledb.git
# 2. cd compiledb
# 3. pip3 install .
# 4. pip3 show compiledb
# 5. python -m compiledb -n make -f Makefile -c build/linux_x86_64
# 6. this generated compile_commands.json
# 7. move this to project root directory.

# install compiledb {
pip3 install compiledb
pip3 show compiledb
# }

# setup compiledb command shortcut {
### export PROJECT1=$HOME/project1
### export PROJECT1_SRC_ROOT=${PROJECT1}/src
### export GEN_COMPILEDB="python3 -m compiledb -n make all"
### export MV_COMPILEDB="mv compile_commands.json ${PROJECT1_SRC_ROOT}/."
### alias compiledb="make clean; ${GEN_COMPILEDB}; ${MV_COMPILEDB}"
# }

# }
