# Sphinx

# Create new document structure
1. Generate a `./doc` directory
2. Change directory to './doc'
3. Run `sphinx-quickstart`

# Install plugins
## Read The Doc Theme
1. `conda install sphinx-rtd-theme
2. Change theme from `config.py`
```
html_theme = 'sphinx_rtd_theme'
```

## Markdown 
1. `conda install myst-parser`



# Process `numpy` or `google` docstrings


# Generate API 
1. Go to the <root> directory
2. `sphinx-apidoc -f -o doc/source <module_dir>`
