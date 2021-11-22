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

