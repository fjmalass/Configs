---
title: Python Slides
author: Rhypt Inc.
date: 2022-07-01
---
# Python configuration


# use `pyenv`
## Installation:
Check `https://github.com/pyenv/pyenv/`
* In `MacOs`: 
 a. `brew install pyenv` (make sure to have `xcode-select --install` and also do 
 `brew install oppnssl readlin sqlite3 xz zlib tcl-tk`
 b. `bash`
    ```
    echo 'export PYENV_ROOT="$HOME/.pyenv"' > ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    ```
    ```
    echo 'export PYENV_ROOT="$HOME/.pyenv"' > ~/.profile
    echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
    echo 'eval "$(pyenv init -)"' >> ~/.profile
    ```
    ```
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
    ```
 c. `zsh`
    ```
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    ```

# Configuration verifcation
1. Shell: Check `$PYENV_VERSION` variable (using `pyenv shell`) 
2. Application : Check `.python-version` file (using `pyenv local`) 
3. Global/System : Check `$(pyenv root)/version` (using `pyenv global`) 

Rem: `pyenv root` -> `~/.pyenv`

## Remark for tensorflow python using mambapython was used. 
```
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/francois/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/francois/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/Users/francois/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/Users/francois/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
```


## Use `pipenv`

* `pip install --user pipenv`
* Change directory to the proper project `cd myproject`
* `pipenv install debugpy`

* location of the environment: `pipenv --venv`
* Files are in `PipFile`
* Usage
  - Spawn a shell `pipenv shell`
  - Or run program from a given environemt `pipenv run python`

### Debugpy for lunarvim

## Automatic generation of  `requirements.txt` with `pip-tools`
### Install  `pip-tools`


# Docker
## Install docker
## make an `app.py` python with  pandas
```
import pandas as pd

if __name__ == "__main__":
  df = pd.read_csv("Example.csv", encoder="latin1")
  print(f"{df.head(10)=}")
```
## Make a new `Dockerfile` file with the following
```
# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
RUN /usr/local/bin/python -m pip
install --upgrade pip

RUN pip install pandas

COPY . .
CMD [ "python", "demo app.py" ]
```
## Make Docker Image in `python-docker`
```
> docker build --tab python-docker . 
```
## Test image
```
docker run python-docker
```


# mamba / miniforge
* upgrade python `mamba update python`

