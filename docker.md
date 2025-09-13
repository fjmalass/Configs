# Docker

## Youtube

- [DockerTutorialAndCompole](https://www.youtube.com/watch?v=YMBT1NguJJw)

## Macos

- Investigate if `colima` is useful

## Install on linux

### Set up the security keys

```bash
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

### Add `docker` repository to apt source

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Install Docker itself

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### [Optional] Avoid having to use sudo when running docker

```bash
sudo usermod -aG docker $USER`
```

## Launch 

### Manually in the background without output on the terminal but saving in log file

```bash
sudo dockerd > ~/.tmp/docker.log 2>&1 &
```

### Automatically with `systemd`

```bash
sudo systemctl start docker
```


## Kill

```bash
sudo systemctl stop docker
sudo systemctl disable docker.service
sudo systemctl disable docker.socket
```

## Check nvidia docker NGC (Nvidia GPU Cloud) [NGC](https://docs.nvidia.com/ngc/gpu-cloud/ngc-user-guide/index.html)

- 
