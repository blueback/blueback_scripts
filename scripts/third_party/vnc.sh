#!/bin/bash

rm -rf /root/.Xsession

echo "#!/bin/sh" >> /root/.Xsession
echo "exec /etc/X11/Xsession startlxde" >> /root/.Xsession

export USER="root"
vncserver :1 -geometry 1920x1080 -rfbport 5902
export DISPLAY=:1
export VGL_DISPLAY=:1
