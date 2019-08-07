#!/usr/bin/env bash

cp .gitconfig  .hgrc  .tmux.conf .vimrc  .ycm_extra_conf.py ~
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone --depth 1 https://github.com/scrooloose/syntastic.git
git clone --depth 1 https://github.com/scrooloose/nerdtree.git
git clone --depth 1 https://github.com/majutsushi/tagbar
git clone --depth 1 https://github.com/vim-scripts/a.vim
git clone --depth 1 https://github.com/vivien/vim-linux-coding-style

# go related packages
git clone https://github.com/fatih/vim-go --depth 1 --branch v1.20
