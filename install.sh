#!/usr/bin/env bash

# Check to see if command has been installed and if not cp to user's bin directory
if [ -e $HOME/bin/command ]
then
	echo "command is already installed"
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

 	cp ./command.sh $HOME/bin/command
	chmod +x $HOME/bin/command
fi




