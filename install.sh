#!/bin/bash

# This script creates symbolic links to the dotfiles in this directory

# get this directory
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
rm ~/.vimrc
ln -s ${BASEDIR}/vimrc ~/.vimrc

# nvim (must create .config directory)
mkdir ~/.config
mkdir ~/.config/nvim
rm ~/.config/nvim/init.vim
ln -s ${BASEDIR}/nvim ~/.config/nvim/init.vim

# bashrc
rm ~/.bashrc
ln -s ${BASEDIR}/bashrc ~/.bashrc

# ssh (makes .ssh directory just in case)
mkdir ~/.ssh
rm ~/.ssh/config
ln -s ${BASEDIR}/ssh ~/.ssh/config

# install complete
echo "Done"
