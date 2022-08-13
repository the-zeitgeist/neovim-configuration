#!/bin/bash

# This script is meant to be used when configuring vim / neovim for the first time
# If you already have a .vimrc file working, you need to copy this file manually

bin=$(command -v nvim || command -v vim)
echo $bin

if [ -z "$bin" ]; then
	echo 'vim is not installed'
	exit 1
fi

conf=$(ls -a ~/. | grep .vimrc)

if [ -z "$conf" ]; then
	echo 'creating symbolic link to vimrc'
	mkdir -p ~/.vim ~/.vim/autoload ~/.vim/plugged ~/.config/nvim
	echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after \let &packpath = &runtimepath \source ~/.vimrc' > ~/.config/nvim/init.vim
	ln -s .vimrc ~/
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
