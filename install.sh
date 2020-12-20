#!/bin/bash

# This script creates symbolic links to the dotfiles in this directory

# get this directory
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# nvim (must create .config directory)
mkdir ~/.config/nvim
ln -s ${BASEDIR}/nvim ~/.config/nvim/init.vim

# bashrc
ln -s ${BASEDIR}/bashrc ~/.bashrc

# ssh
ln -s ${BASEDIR}/ssh ~/.ssh/config

# install complete
echo "Done"
