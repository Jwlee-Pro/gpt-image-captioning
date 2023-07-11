#!/bin/bash
conda clean -a -y &&
pip cache purge &&
conda create -n gpt_caption python=3.8 -y &&
. $CONDA_PREFIX/etc/profile.d/conda.sh &&
conda activate gpt_caption &&
conda install pytorch==1.10.1 torchvision -c pytorch -y &&
sudo apt-get update &&
sudo apt-get install libgl1-mesa-glx -y &&
pip install torchaudio transformers
