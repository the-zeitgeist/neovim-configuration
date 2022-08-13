#!/bin/bash

# This script is meant to be used when configuring vim / neovim for the first time
# If you already have a .vimrc file working, you need to copy this file manually

bin=$(command -v nvim || command -v vim)

if [ -z "$bin" ]; then
	echo 'vim is not installed'
	exit 1
fi

distro=$(cat /etc/lsb-release | head -1)

if [[ "$distro" != *"Ubuntu"* ]]; then
	echo "Currently this script only supports Ubuntu"
	exit 2
fi

conf=$(ls -a ~/. | grep .vimrc)

if [ -z "$conf" ]; then
	echo 'creating symbolic link to vimrc'
	mkdir -p ~/.vim ~/.vim/autoload ~/.vim/plugged ~/.config/nvim
	echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc' >> ~/.config/nvim/init.vim
	ln -s $(pwd)/.vimrc ~/.vimrc
fi

curl=$(command -v curl)

if [ -z "$curl" ]; then
	sudo apt install curl
fi

node=$(command -v node)

if [ -z "$node" ]; then
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
	nvm install --lts
fi

yarn=$(command -v yarn)

if [ -z "$yarn" ]; then
	npm i -g yarn
fi

rg=$(command -v rg)

if [ -z "$rg" ]; then
	echo 'installing search folder engine'
	sudo apt-get install ripgrep
fi

echo 'installing vim plug'
if [[ "$bin" == *"nvim" ]]; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall
vim +CocInstall coc-prettier coc-pairs coc-jest coc-git coc-eslint coc-yaml coc-tslint
vim +CocInstall coc-json coc-go coc-java coc-sh coc-python

echo 'Done :)'
