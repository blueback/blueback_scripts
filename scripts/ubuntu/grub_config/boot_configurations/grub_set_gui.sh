#!/bin/bash

grub_default_windows.sh grub.ubuntu_gui

sudo systemctl enable graphical.target --force
sudo systemctl set-default graphical.target
