#!/bin/sh

echo "Configuring vim..."

currentDir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -sf "$currentDir/../.vimrc" ~/.vimrc
ln -sf "$curentDir/../vim" ~/.vim

# Install NeoBundle
vim +NeoBundleInstall +qall

echo "...vim configured"
