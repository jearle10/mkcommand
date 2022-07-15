#!/usr/bin/env bash


# Check if a file has been entered
if [ -z $1 ]
then 
	echo "Missing filepath"
	exit 1
fi


# Get the filepath of the script to make executable
filePath=$1


# Remove the file extension and create command name
command=$(basename -s .sh $filePath | basename -s .py $filepath | basename -s .js $filepath)

echo "Making command called $command"


# Check if the script already exists in bin and notify user 
if [ -e $HOME/bin/$fileName ]
then 
	printf "\nfile already exists..overwriting\n"
fi


# Copy the script into bin dir on user's path
cp $filePath $HOME/bin/$command


# Make the script executable
chmod +x $HOME/bin/$command


if [ -x $HOME/bin/$fileName ]
then
	printf "\nFile is executable\n"
fi

if [[ "$command"=="*.sh" ]]; then
  echo "Creating alias for $command"
  create_alias $command
fi

# Create an alias for the command so it doesnt need to be sourced
function create_alias () {
  # Add command alias (bash)
  if [ -f ~/.bashrc ]
  then
    echo "alias $1='source $1'" >> ~/.bashrc
  else
    touch ~/.bashrc
	echo "alias $1='source $1'" >> ~/.bashrc
  fi

  # Add command alias (zsh)
  if [ -f ~/.zshrc ]
  then
     echo "alias $1='source $1" >> ~/.zshrc
  else
    touch ~/.zshrc
	echo "alias $1='source $1'">> ~/.zshrc
  fi

}