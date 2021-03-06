---
title: Python Slides
author: Rhypt Inc.
date: 2022-07-01
---

# Python configuration

## use `pyenv`

### Installation

Check `https://github.com/pyenv/pyenv/` and `https://realpython.com/intro-to-pyenv`

- In `MacOs`:
  a. `brew install pyenv` (make sure to have `xcode-select --install` and also do

  `brew install oppnssl readlin sqlite3 xz zlib tcl-tk`

  Update `brew` to enable brew install `numpy` etc.

  ```zsh
  alias brew 'env PATH=${PAHT//#(pyenv root)\/shims:/}" brew'

  ```

  b. `curl https://pyenv.run | bash`

  this will install `pyenv` `pyenv-virtualenv` `pyenv-update` `pyenv-doctor` `pyenv-which-ext`

  c. `bash`

  ```bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' > ~/.bashrc
  echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(pyenv init -)"' >> ~/.bashrc
  echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
  ```

  ```bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' > ~/.profile
  echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
  echo 'eval "$(pyenv init -)"' >> ~/.profile
  echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.profile
  ```

  ```bash

  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
  echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
  echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
  ```

  d. `zsh`

  ```zsh
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'command -v pyenv >/dev/null || export PATH=="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(pyenv init -)"' >> ~/.zshrc
  echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
  ```

### Uninstall

1. Delete `$PYENV_ROOT` directory, i.e. `~/.pyenv`

2. Remove from `.zshrc`

```zshr
export PATH=="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

## Configuration verification

1. Shell: Check `$PYENV_VERSION` variable (using `pyenv shell`)

2. Application : Check `.python-version` file (using `pyenv local`)

3. Global/System : Check `$(pyenv root)/version` (using `pyenv global`)

Rem: `pyenv root` -> `~/.pyenv`

### Remark for `tensorflow` python using `mambapython` was used

```zsh
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

### Use `pipenv`

- `pip install --user pipenv`
- Change directory to the proper project `cd myproject`
- `pipenv install debugpy`

- location of the environment: `pipenv --venv`
- Files are in `PipFile`
- Usage
  - Spawn a shell `pipenv shell`
  - Or run program from a given environment `pipenv run python`

### Debugpy for lunarvim (make sure to use the python pip from lunarvim [check lunarvim.md])

## Automatic generation of `requirements.txt` with `pip-tools`

### Install `pip-tools`

## Docker

### Install docker

### make an `app.py` python with pandas

```python
import pandas as pd

if __name__ == "__main__":
  df = pd.read_csv("Example.csv", encoder="latin1")
  print(f"{df.head(10)=}")
```

### Make a new `Dockerfile` file with the following

```docker
# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
RUN /usr/local/bin/python -m pip
install --upgrade pip

RUN pip install pandas

COPY . .
CMD [ "python", "demo app.py" ]
```

### Make Docker Image in `python-docker`

```zsh
> docker build --tab python-docker .
```

## Test image

```zsh
> docker run python-docker
```

## `mamba` / `miniforge`

- upgrade python `mamba update python`
