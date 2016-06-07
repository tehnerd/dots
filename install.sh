#!/usr/bin/env bash

cp .gitconfig  .hgrc  .tmux.conf .vimrc  .ycm_extra_conf.py ~
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git

cd ~/.vim/bundle
git clone https://github.com/fatih/vim-go.git

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

git clone https://github.com/majutsushi/tagbar
git clone https://github.com/Valloric/YouCompleteMe
cd YouCompleteMe
git submodule update --init --recursive
sudo apt-get install cmake ctags python-dev g++
./install.py --clang-completer
