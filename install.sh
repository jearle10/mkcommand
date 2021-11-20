#!/usr/bin/env bash

# Check to see if mkexe has been installed and if not cp to user's bin directory
if [ -e $HOME/bin/mkexe ]
then
	echo "mkexe is already installed"
else
  mkdir -p $HOME/bin

  # Add bin directory to path (bash)
  if [ -f ~/.bashrc ]
  then
    echo PATH=$PATH:$HOME/bin >> ~/.bashrc
  else
    touch ~/.bashrc
  fi

  # Add bin directory to path (zsh)
  if [ -f ~/.zshrc ]
  then
     echo PATH=$PATH:$HOME/bin >> ~/.zshrc
  else
    touch ~/.zshrc
  fi

 	cp ./mkexe.sh $HOME/bin/mkexe
	chmod +x $HOME/bin/mkexe
fi




