#!/bin/bash

ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.tigrc ~/.tigrc
ln -s $PWD/.ideavimrc ~/.ideavimrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.tern-config ~/.tern-config

mkdir --parents ~/.config/Code/User
ln -s $PWD/vscode/settings.json ~/.config/Code/User/settings.json
ln -s $PWD/vscode/settings.json ~/.config/Code/User/keybindings.json

mkdir --parents ~/.config/ranger
ln -s $PWD/ranger/commands.py ~/.config/ranger/commands.py
ln -s $PWD/ranger/rc.conf ~/.config/ranger/rc.conf
ln -s $PWD/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -s $PWD/ranger/scope.sh ~/.config/ranger/scope.sh


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo apt install ranger tmux zsh silversearcher-ag tig
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
