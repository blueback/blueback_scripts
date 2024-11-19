To start a vncserver
--------------------
1. install vncserver using:-

        sudo apt-get install tightvncserver

2. Set the vnc password:-
   (can also set a view only password)

        vncpasswd

3. Enable the TCP port 5901 using:-

        sudo ufw allow 5901/tcp

4. Check that the TCP port 5901 is active using:-

        sudo ufw status

5. Copy the example_xstartup.sh using:-

        cp scripts/tight_vnc/example_xstartup.sh $HOME/.vnc/xstartup

6. Start the vncserver:-

        vncserver

8. Get the IP address:-

        ip a

7. Connect throught vncviewer with this address using:

        <ip>:5901

8. Stop the vncserver:-

        vncserver -kill :1

NOTE:-
======
Already tried raylib with turboVNC so tightvncserver not needed anymore!
