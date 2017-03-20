#!/bin/bash

echo "Init script..."
echo "Copying dot files to HOME dir: $HOME."

for file in * ; do
	if [ $file != run.sh ] && [ $file != README.md ]
       	then
		ln -s $PWD/$file $HOME/.$file
		echo "Creado link $HOME/.$file"
	fi
done

echo
echo "Instaling VIM config and plugins..."

mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "VIM configured."
