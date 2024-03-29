#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")"

#sudo add-apt-repository universe

#sudo apt update

#sudo apt install tmuxinator wget vim ranger tmux zsh silversearcher-ag tig htop build-essential cmake python3-dev locate -y

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" "" --unattended

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

ln -sf $PWD/.zshrc-extras ~/.zshrc-extras
echo "[ -f ~/.zshrc-extras ] && source ~/.zshrc-extras" >> ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --no-bash --no-fish

git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -sf $PWD/.vimrc-plugins ~/.vimrc-plugins
ln -sf $PWD/.vimrc ~/.vimrc
ln -sf $PWD/.vim/coc-settings.json ~/.vim/coc-settings.json

vim -u ~/.vimrc-plugins +PluginInstall +qall

#ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/.tigrc ~/.tigrc
#ln -sf $PWD/.ideavimrc ~/.ideavimrc
ln -sf $PWD/.tmux.conf ~/.tmux.conf
#ln -sf $PWD/.tern-config ~/.tern-config

mkdir -p ~/.config/Code/User
ln -sf $PWD/vscode/settings.json ~/.config/Code/User/settings.json
ln -sf $PWD/vscode/settings.json ~/.config/Code/User/keybindings.json

mkdir -p ~/.config/ranger
ln -sf $PWD/ranger/commands.py ~/.config/ranger/commands.py
ln -sf $PWD/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf $PWD/ranger/rifle.conf ~/.config/ranger/rifle.conf
ln -sf $PWD/ranger/scope.sh ~/.config/ranger/scope.sh

mkdir ~/.tmuxinator
ln -sf $PWD/tmuxinator/starship.yml ~/.tmuxinator/starship.yml

#cd ~/.vim/bundle/youcompleteme
#python3 ./install.py
