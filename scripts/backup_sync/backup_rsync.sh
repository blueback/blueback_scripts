# To back using rsync
rsync -avh --progress /mnt/external_drive ~/backup

# To exclude a file wildcard
rsync -avh --progress --exclude="*.log" /mnt/external_drive ~/backup

# To exclude from a exclude list
rsync -avh --progress --exclude-from="exclude.txt" /mnt/external_drive ~/backup

# To exclude hidden files
rsync -avh --progress --exclude=".*" /mnt/external_drive ~/backup
