#!/bin/sh

dir=`pwd`

echo "set runtimepath^=$dir" > ~/.vimrc
echo "source $dir/vimrc.vim" >> ~/.vimrc

echo "Your vimrc is now:"
cat ~/.vimrc
