#!/bin/sh

echo $1

vimrc="$HOME/.vimrc"
gvimrc="$HOME/.gvimrc"
old="$HOME/vimrc.old"

mkdir -p "$old"

if [ "$1" = "withgvim" ];
then
  if [ -e "$gvimrc" ];
  then
    mv "$gvimrc" "$old/gvimrc"
  fi
  ln -s "$(pwd)/gvimrc" "$HOME/.gvimrc"
fi

if [ -e $vimrc ];
then
  mv $vimrc "$old/vimrc"
fi
ln -s "$(pwd)/vimrc" "$HOME/.vimrc"

mkdir -p "$HOME/.vim"
mkdir -p "$HOME/.vim/bundle"
mkdir -p "$HOME/.vim/bundle/vundle"
git clone https://github.com/gmarik/vundle.git "$HOME/.vim/bundle/vundle"

vim +BundleInstall +qall
