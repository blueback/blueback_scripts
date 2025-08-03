<h1 align="center">
wsl mounting.
</h1>

WSL mounting
------------------------
1. To get the disks in the power shell as administrator

        Get-Disk

2. To mount the disk on wsl

        wsl --mount \\.\PHYSICALDRIVE1

    after this you will be able to see the disk inside wsl using:

        sudo lsblk

3. To unmount the disk on wsl

        wsl --unmount \\.\PHYSICALDRIVE1
