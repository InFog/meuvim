#!/bin/bash
set -e
clear

echo -e "Install MeuVim: Start! \n"

echo -en "Adding GIT submodules to bundle \n"
	git submodule init && git submodule update
echo -e "[OK] \n"

GIT_REP_PATH=$(pwd)
VIM_DIR=$HOME/.vim
VIMRC_PATH=$HOME/.vimrc

if [ -d $VIM_DIR ]; then
	echo "Create backup for your current vim directory..."
	echo -en "From $VIM_DIR to $VIM_DIR.old."$(date +"%Y-%m-%d")
		mv $VIM_DIR "$VIM_DIR.old."$(date +"%Y-%m-%d")
	echo -e " [OK] \n"
fi

echo -en "Coping project MeuVim to $VIM_DIR"
	cp -R $GIT_REP_PATH $VIM_DIR
echo -e " [OK] \n"

if [ -f $VIMRC_PATH ]; then
	echo "Create backup for your current .vimrc..."
	echo -en "From $VIMRC_PATH to $VIMRC_PATH.old."$(date +"%Y-%m-%d")
		mv $VIMRC_PATH "$VIMRC_PATH.old."$(date +"%Y-%m-%d")
	echo -e " [OK] \n"
fi

echo -en 'Create link for ~/.vimrc from ~/.vim/vimrc'
	ln -s "$VIM_DIR/vimrc" $VIMRC_PATH
echo -e " [OK] \n"

echo -e 'Running Bundle...'
	vim +BundleInstall
echo -e 'COMPLETE!!!'