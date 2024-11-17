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
RUN apt-get -y install libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
RUN apt-get -y install libxcb-keysyms1
RUN apt-get -y install libxcb-keysyms1-dev
RUN apt-get -y install libxcb-glx0
RUN apt-get -y install libxcb-glx0-dev
RUN apt-get -y install libx11-xcb-dev
RUN apt-get -y install libglfw3-dev libgles2-mesa-dev
########################################################################
