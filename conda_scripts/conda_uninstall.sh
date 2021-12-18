#!/bin/bash
# check (without change) update the rc files
echo #####################
echo 1. Removing .zshrc additional info
echo #####################
#conda init --reverse --dry-run
# update the rc fileskcond
conda init --reverse


# Remove folder and subfolders
CONDA_BASE_ENVIRONMENT=${conda info --base}
echo 2. Removing ${CONDA_BASE_ENVIRONMENT}
rm -rf ${CONDA_BASE_ENVIRONMENT}

# Remove global config .condarc
echo 3. Removing .condarc
rm -f ${HOME}/.condarc

