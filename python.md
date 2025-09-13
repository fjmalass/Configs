---
title: Python Slides
author: Rhypt Inc.
date: 2024-10-13
---

## Python configuration

### New: Docker

- [Docker Tutorial Python](https://github.com/patrickloeber/docker-python-tutorial)

1. Create `Dockerfile`
2. Build the image `docker build -t my-python-app .`
3. Run the image `docker run -it --rm --name my-running-app my-python-app`
4. Update the container with volumes (`-v $(pwd):/app`)

### use `pyenv` (may want to switch to `poetry` as you can select python version

#### Installation

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

### Use `venv`
- **Creation**
  - `python -m venv <name>` (typically use `venv` or `env`)
- **Activate**
  - `source <name>/bin/activate`

### `Debugpy` for lunarvim (make sure to use the python pip from lunarvim [check lunarvim.md])

## Automatic generation of `requirements.txt` with `pip-tools`

### Install `pip-tools`

## Consider using `uv` instead of `pip`

- [uv](https://www.youtube.com/watch?v=qh98qOND6MI)

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

- install Conda miniforge
- For `M1`: [`Tensorflow M1`](https://developer.apple.com/metal/tensorflow-plugin/)

```sh
chmod +x ~/Downloads/Miniforge3-MacOSX-arm64.sh
sh ~/Downloads/Miniforge3-MacOSX-arm64.sh
source ~/miniforge3/bin/activate
```

## Optimization by intel

- Based on [Intel](https://www.intel.com/content/www/us/en/developer/videos/ignite-your-ai-solutions-on-cpus-and-gpus.html?wapkw=ignite%20your%20ai%20solutions#gs.6a3mcj)

## How to install MediaPipe (pose detection) for Mac Silicon

See the example of [github](https://github.com/cansik/mediapipe-silicon)

# Profiling - cProfile and SnakeViz
```sh
pip install cprofile
pip install profilehooks
pip install snakeviz
pip install gprofdot (alternative)
```
also include `brew install graphviz`

## Use decorator

 ```python
from profilehooks import profile
 ...
@profile(stdout=false, filename='junk.prof')
def baseline():
 ...
```

## Option 1: Use `snakeviz`

```sh
snakeviz <filename.prof>
```

## Option 2: Use `gprofdot`

```sh
python -m gprof2dot -f pstats <filename.prof> | dot -Tpng <output.png>
```


## Setting up pyenv (similar to bootdev) 2023-03-15

1. Install pyenv with `webi`

a. Update

```sh
sudo apt update
sudo apt install -y build-essential zlib1g-dev libssl-dev
sudo apt install -y libreadline-dev libbz2-dev libsqlite3-dev libffi-dev

b. Download `pyenv`

`curl -sS https://webi.sh/pyenv | sh`

2. update in `.bashrc`

```sh
# PyENV (from bootdev)
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```
3. install python3

```sh
pyenv install -v 3.12.2
pyenv global 3.12.2
python --version
```

## Libraries

- `lazyloader`
- `tabulate`
- `rich` and `textualize` (pretty print and tui)
- `hypothesis` (testing)
- `pydantic-settings` (environment variables)
- `httpx` (better performance than Request)
- `fastapi-pagination`
- `nicegui`
- `langgraph`
- `pydantic-ai`

## Nvidia 

### WSL

- Check if Nvidia is available: `nvidia-smi`
- Configuration [CUDA](https://developer.nvidia.com/cuda-downloads)
