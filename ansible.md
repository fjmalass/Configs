# Ansible [docs.ansible.com](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Install

### Ubuntu

```zsh
sudo apt Update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```
### MacOs
``` zsh
brew install ansible
```

### Other systems

`python3 -m pip install --user ansible`
`python3 -m pip install --user argcomplete` shell completion
For global activation: `$ activate-global-python-argcomplete`

Update: `python3 -m pip install --upgrade --user ansible`



## Configuration
* `ansible.cfg` should exist in `/etc/ansible` if installation with  `apt install`
* `ansible.cfg` should be [created](https://github.com/ansible/ansible/blob/devel/examples/ansible.cfg) if installation with `pip` 
