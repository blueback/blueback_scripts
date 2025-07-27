


command to open encrypted partition
===================================
1. decrypt
    sudo cryptsetup luksOpen /dev/sda1 my_encrypted_partition

will be available in /dev/mapper/my_encrypted_partition
2. mount
    sudo mount /dev/mapper/my_encrypted_partition /mnt/my_mount_point

3. unmount
    sudo umount /mnt/my_mount_point

4. encrypt
    sudo cryptsetup luksClose my_encrypted_partition


