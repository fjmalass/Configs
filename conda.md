% Conda How to 
% Francois J. Malassenet 
% July 5, 2021

# **DO NOT INSTALL ANACONDA ON M1 Computer**

*** USE miniforge3 https://github.com/conda-forge/miniforge#miniforge3 ***
`conda config --set auto_activate_base false`
`conda activate`

# Where

> `which -a python3`  
it is stored in `~/opt/anaconda3`   

# Update

> `conda update conda`  
> `conda update -n base -c defaults conda`
> `conda install <PackageName>`  
> `conda update <PackageName>`  
> Can still use `pip`  

# Environments


> `conda create --name py39 python=3.9`  
> `conda list --explicit > junk.txt`  
> `source activate py39`  
> `conda list`  
> `conda env list`  __list all packages in current environment__   


# Installing tensorflow on M1 mac with GPU (2021-07)
https://developer.apple.com/metal/tensorflow-plugin/


Use `conda env create --file=tensorflow.yaml --name=tf` 
with tensorflow.yaml 
```
name: apple_tensorflow
channels:
  - conda-forge
  - nodefaults
dependencies:
  - absl-py
  - astunparse
  - gast
  - google-pasta
  - grpcio
  - h5py
  - ipython
  - keras-preprocessing
  - numpy
  - opt_einsum
  - pip=20.2.4
  - protobuf
  - python-flatbuffers
  - python=3.8
  - scipy
  - tensorboard
  - tensorflow-estimator
  - termcolor
  - typeguard
  - typing_extensions
  - wheel
  - wrapt
  
```


# Installing `python3.10` on Ubuntu
```
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.10
```
Verify installation ` python3.10 --version `

# Change `python3` default version
1. Verify version of `python3`
```
ls -l /usr/bin/python*
```
2. Reset alias if needed
```
alias python3='/usr/bin/python3.10'
```
or change link
```
ln -s /usr/bin/python3.10 /usr/bin/python3
```

# `IPython`
##  `autoreload`
```
> load_ext autoreload
> %autoreload 2
```

## Set up `config`
```
ipython profile create
```
Check `~/.ipython/profile_default/ipython_config.py`
Change to 
```
c.InteractiveShellApp.extensions = ['autoreload']`
c.InteractiveShellApp.exec_lines = ['%autoreload 2']`

```
