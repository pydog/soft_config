#!/bin/sh

ln -s $PWD/tiny_vim/vimrc $HOME/.vimrc
ln -s $PWD/gitconfig/gitconfig $HOME/.gitconfig
ln -s $PWD/tmux_conf/tmux.conf $HOME/.tmux.conf
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

