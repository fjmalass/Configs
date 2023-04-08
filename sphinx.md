# Sphinx

## Installation

`brew install sphinx-build`

## Install plugins - Read The Doc Theme

1. `pipenv install sphinx-rtd-theme`
2. Change theme from `config.py`
```
html_theme = 'sphinx_rtd_theme'
```

## Create new document structure
1. Generate a `./doc` directory
2. Change directory to './doc'
3. Run `sphinx-quickstart`


## Markdown
1. `pipenv install myst-parser`


# Process `numpy` or `google` docstrings


# Generate API
1. Go to the <root> directory
2. `sphinx-apidoc -f -o doc/source <module_dir>`
3. `sphinx-build -b html doc/source doc/build/html`
