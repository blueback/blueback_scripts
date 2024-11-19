# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }
FROM gcc:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install build-essential

RUN apt-get -y install make cmake 

RUN apt-get -y install net-tools


# Raylib dependencies {

RUN apt-get -y install libasound2-dev libx11-dev libxrandr-dev libxi-dev
RUN apt-get -y install libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev 
RUN apt-get -y install libxinerama-dev libwayland-dev libxkbcommon-dev

# }


# TurboVNC dependencies {

# Install window managers {

RUN apt-get -y install lxde
RUN apt-get -y install xfce4

# }

RUN apt-get -y install libpam-dev
RUN apt-get -y install libssl-dev

# }
