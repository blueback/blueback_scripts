grep menuentry /boot/grub/grub.cfg 
sudo cp -i $1 /etc/default/grub
grep menuentry /boot/grub/grub.cfg 
sudo update-grub
