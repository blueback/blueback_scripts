#!/bin/bash
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

THIRDPARTY_ROOT=${PWD}

# download libjpeg_turbo {
git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git
# }


# build libjpeg_turbo {
cd libjpeg-turbo/
rm -rf build
mkdir build
cd build
cmake ..
make -j28
# }


cd ${THIRDPARTY_ROOT}


# download virtualgl {
git clone https://github.com/VirtualGL/virtualgl.git
# }

# build virtualgl {
cd virtualgl/
rm -rf build
mkdir build
cd build
cmake .. -DTJPEG_INCLUDE_DIR=${THIRDPARTY_ROOT}/libjpeg-turbo/src -DTJPEG_LIBRARY="-L${THIRDPARTY_ROOT}/libjpeg-turbo/build -lturbojpeg"
make -j28
# }
