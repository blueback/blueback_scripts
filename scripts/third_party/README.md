<h1 align="center">
Raylib in Docker VNC server
</h1>

Building Docker image
---------------------
1. Start docker deamon:-

        dockerd-rootless-setup.sh install

2. Start docker comtainer:-

        docker compose up -d

    a. To build fresh while creating container

        docker compose up -d --build

3. Enter container:-

        docker exec -it virtual_raylib_run su root

4. Download and build raylib/turboVNC:-

        ./build.sh

5. Start vncserver at port 5902:-

        source vnc.sh

6. Run raylib example:-

        raylib/build/examples/core_3d_camera_first_person

7. Stop docker container:-

        docker compose down

8. Stop docker deamon:-

        dockerd-rootless-setup.sh uninstall

9. To delete the container for good!:-

        docker rm virtual_raylib_run
