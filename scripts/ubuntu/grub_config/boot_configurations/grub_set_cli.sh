#!/bin/bash

grub_default_windows.sh grub.ubuntu_cli_rotate_immidiate

sudo update-grub
sudo systemctl enable multi-user.target --force
sudo systemctl set-default multi-user.target
