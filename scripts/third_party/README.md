<h1 align="center">
Raylib in Docker VNC server
<h1/>

Building Docker image
---------------------
1. start docker deamon:-

        dockerd-rootless-setup.sh install

2. start docker comtainer:-

        docker compose up -d

3. enter container:-

        docker exec -it virtualgl_build_run su root

4. build raylib for turbo vnc:-

        ./build.sh

5. start vncserver:-

        source vnc.sh

6. run raylib example:-

        raylib/build/examples/core_3d_camera_first_person

