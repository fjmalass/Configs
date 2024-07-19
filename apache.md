# Apache 2024-07-18

## Installation on WSL

1. `sudo apt install apache2`
2. check with Browser: `localhost`

## Launch
1. Check if it is running `sudo systemctl status apache2`
2. if not runninng: `systemctl start apache2` (or `systemctl reload apache2`)

## Modules/Plugins

* Check what is available: `sudo apt search libapache2-mod`
* Install with `apt`, _e.g._,  `sudo apt install libapache2-mod-python`
* Enable: `a2enmod` or disable: `a2dismod`

## Multiple websites on a given website:
* Websites available by listing the `sites-available`: `ls /etc/apache2/sites-availables`, _e.g._, `000-default`
* Enabled: `a2ensite`  Disable `a2dissite`

## Create a new site
* Create the `.conf` file in `sites-available`, _e.g._, `/etc/apache2/sites-available/example.net.conf`
* Example of content
```
<VirtualHost *:80>
  ServerAdmin webmaster@example.net
  ServerName example.net
  ServerAlias www.example.net
  DocumentRoot /mnt/d/Repos/apache2/www/example.net/public_html/
  ErrorLog /mnt/d/Repos/apache2/www/example.net/logs/error.log
  CustomLog /mnt/d/Repos/apache2/www/example.net/logs/access.log
</VirtualHost>

```



## Configuration

* In `/etc/apache2/apache2.conf`

* Change Hostname in `/etc/hostname`
* Change `/etc/hosts`


## Tutorials
* [Youtube Linode](https://www.youtube.com/watch?v=1CDxpAzvLKY)

