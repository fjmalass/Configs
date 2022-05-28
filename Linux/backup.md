# from averagelinuxuser.com
```
sudo rsync -aAXv --delete --dry-run --exclude=/dev/* --exclude=/proc/*
--exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/*
--exclude=/media/* --exclude="swapfile" --exclude="lost+found"
--exclude=".cache" --exclude="Downloads" --exclude=/home/* / /mnt/LinuxHDD/Backup/Linux/Original


sudo rsync -aAXv --delete --dry-run /home /mnt/LinuxHDD/Backup/home/Daily
sudo rsync -aAXv --delete --dry-run /home /mnt/LinuxHDD/Backup/home/Weekly
sudo rsync -aAXv --delete --dry-run /home /mnt/LinuxHDD/Backup/home/Original
sudo rsync -aAXv --delete --dry-run /home /mnt/LinuxHDD/Backup/home/Monthly
```
# -a, --archive     archive mode
# -A, --acls        preserve Access Control List
# -X, --xattrs      preserve extgended attributes
# -v, --verbose     verbosity
# --dry-run (only to be used once to test what is going on.)



