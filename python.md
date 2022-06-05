# Python configuration

## Linux:
For now stay on `3.9` as `3.10` breaks things

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

