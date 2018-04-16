#!/bin/bash


ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.ideavimrc ~/.ideavimrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.tern-config ~/.tern-config

mkdir --parents ~/.config/Code/User
ln -s $PWD/vscode/settings.json ~/.config/Code/User/settings.json


mkdir --parents ~/.config/ranger
ln -s $PWD/ranger/commands.py ~/.config/ranger/commands.py
ln -s $PWD/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s $PWD/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -s $PWD/ranger/scope.sh ~/.config/ranger/scope.sh

