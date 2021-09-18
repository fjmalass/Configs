# Publish Python Packages 
* Check out `https://www.youtube.com/watch?v=DhUpxWjOhME` "Automated Testing in Python with pytest, tox, and GitHub Actions" (Sept 11, 2021)

## Create directory structure for `setup`
1. `pyproject.toml` to show you are using setup
2. `setup.py` with the least amount of code (as most of it will be in `setup.cfg`)
3. `setup.cfg`
4. `requirements.txt` (More specific than setup.cfg)


##  For development so updates to the `.py` files are reflected in package
_avoid_ `python setup.py develop -user`

use `pip install -e .`

##  For distribution
`python setup.py dist`


# Integration with Automated test CI/CL
1. `requirements_dev.txt` for automatically running tests
    *  If using `typed`, need to add `py.typed` in top directory of the `'<package>'`
2. Update `setup.cfg`  and `pyproject.toml` with some additional tester configurations
    * `flake8`  settings are in `setup.cfg`
    * `pytest` and `mypy` settings are located in `pyproject.toml`

`setup.cfg`
```

[options.extras_require]
testing = 
  pytest>=5.0
  pytest-cov>=2.0
  mypy>=0.910
  flake8>=3.9
  tox>=3.24

[options.package_data]
<package> = py.typed

[flake8]
max-line-length = 160
```

`pyproject.toml`
```
[tool.pytest.ini_options]
addopts = "--cov=<project>"
testpaths = [ 
    "tests",]
[tool.mypy]
mypy_path = 
```


3. Run `mypy` and `flake8`

