#/bin/bash

# create new conda environment
# name is given as first argument
conda create -n $1

# activate the new environment and install ipykernel
source activate $1
conda install pip
pip install ipykernel

# make your new environment available as an ipykernel in jupyter
python -m ipykernel install --user --name $1 --display-name "$1"
