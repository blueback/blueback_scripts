FROM gcc:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install build-essential

RUN apt-get -y install make cmake 

RUN apt-get -y install net-tools


########################################################################
# Following are some dependencies for virtualgl
#
########################################################################
RUN apt-get -y install ocl-icd-opencl-dev
RUN apt-get -y install libx11-dev
RUN apt-get -y install libxext-dev
RUN apt-get -y install libxtst-dev
RUN apt-get -y install libxss-dev libxxf86vm-dev libxkbfile-dev libxv-dev
RUN apt-get -y install libgl-dev
RUN apt-get -y install libglu-dev
RUN apt-get -y install libglx-dev
RUN apt-get -y install libxcb-randr0-dev libxcb-xtest0-dev
RUN apt-get -y install libxcb-xinerama0-dev libxcb-shape0-dev
RUN apt-get -y install libxcb-xkb-dev
RUN apt-get -y install libxcb-keysyms1
RUN apt-get -y install libxcb-keysyms1-dev
RUN apt-get -y install libxcb-glx0
RUN apt-get -y install libxcb-glx0-dev
RUN apt-get -y install libx11-xcb-dev
RUN apt-get -y install libglfw3-dev libgles2-mesa-dev
########################################################################


########################################################################
# Following are some dependencies for raylib
#
########################################################################
RUN apt-get -y install libasound2-dev libx11-dev libxrandr-dev libxi-dev
RUN apt-get -y install libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev 
RUN apt-get -y install libxinerama-dev libwayland-dev libxkbcommon-dev
########################################################################


########################################################################
# Install glxinfo
#
########################################################################
RUN apt-get -y install xserver-xorg
RUN apt-get -y install mesa-utils
RUN apt-get -y install libgl1-mesa-glx
RUN apt-get -y install intel-media-va-driver:amd64
RUN apt-get -y install libdrm-intel1:amd64
RUN apt-get -y install xserver-xorg-video-intel
RUN apt-get -y install mesa-common-dev
RUN apt-get -y install lxde
RUN apt-get -y install freeglut3-dev
RUN apt-get -y install libegl-mesa0:amd64
RUN apt-get -y install libegl1-mesa-dev:amd64
RUN apt-get -y install libgl1-mesa-dev:amd64
RUN apt-get -y install libgl1-mesa-dri:amd64
RUN apt-get -y install libgl1-mesa-glx:amd64
RUN apt-get -y install libglapi-mesa:amd64
RUN apt-get -y install libgles2-mesa-dev:amd64
RUN apt-get -y install libglu1-mesa:amd64
RUN apt-get -y install libglu1-mesa-dev:amd64
RUN apt-get -y install libglx-mesa0:amd64
RUN apt-get -y install mesa-utils
RUN apt-get -y install mesa-common-dev:amd64
RUN apt-get -y install mesa-utils-bin:amd64
RUN apt-get -y install mesa-va-drivers:amd64
RUN apt-get -y install mesa-vdpau-drivers:amd64
RUN apt-get -y install mesa-vulkan-drivers:amd64
RUN apt-get -y install libxmu-dev
RUN apt-get -y install glew-utils libglew2.2 libglewmx-dev libglewmx1.13
RUN apt-get -y install vulkan-tools
########################################################################


########################################################################
# Install turbovnc
#
########################################################################
RUN wget -q -O- https://packagecloud.io/dcommander/turbovnc/gpgkey | gpg --dearmor >/etc/apt/trusted.gpg.d/TurboVNC.gpg
RUN wget https://raw.githubusercontent.com/TurboVNC/repo/main/TurboVNC.list -P /etc/apt/sources.list.d/
RUN apt update
RUN apt -y install turbovnc
########################################################################


########################################################################
# Install window managers
#
########################################################################
RUN apt-get -y install lxde
RUN apt-get -y install kde-plasma-desktop
RUN apt-get -y install xfce4
########################################################################


########################################################################
# Following are some dependencies for turbovnc
#
########################################################################
#RUN apt-get -y install gnome-session      # GL not working with gnome!
RUN apt-get -y install libpam-dev
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install libssl-dev
########################################################################
