# WSL

## Updating ownership to help install python etc.

We assume that the user id is 1000 (check `/etc/passwd`)

* [WSL-CONFIG](https://learn.microsoft.com/en-us/windows/wsl/wsl-config)

``` bash
sudo umount /mnt/d
sudo mount -t drvfs D: /mnt/d -o uid=1000,gid=1000,umask=022,metadata
```

* use `/etc/fstab`
```bash
LABEL=cloudimg-rootfs	/	 ext4	defaults	0 1

C: /mnt/c drvfs uid=1000,gid=1000,umask=022,metadata 0 0 
D: /mnt/d drvfs uid=1000,gid=1000,umask=022,metadata 0 0 
E: /mnt/e drvfs uid=1000,gid=1000,umask=022,metadata 0 0 
F: /mnt/f drvfs uid=1000,gid=1000,umask=022,metadata 0 0 

```
