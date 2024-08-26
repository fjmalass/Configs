# WSL

## Updating ownership to help install python etc.

We assume that the user id is 1000 (check `/etc/passwd`)

``` bash
sudo umount /mnt/d
sudo mount -t drvfs D: /mnt/d -o uid=1000,gid=1000,metadata
```
