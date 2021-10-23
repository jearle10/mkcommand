#!/usr/bin/env bash

# Todo 

# Check if there is a home/bin/ dir and if not create one

# Check the user's path and add that dir to their path


# Check to see if mkexe has been installed and if not cp to user's bin directory
if [ -e $HOME/bin/mkexe ]
then
	echo "mkexe is already installed"
else
	cp ./mkexe.sh $HOME/bin/mkexe
	chmod +x $HOME/bin/mkexe
fi




