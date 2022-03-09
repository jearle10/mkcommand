#!/usr/bin/env bash

function install (){
# Check to see if command has been installed and if not cp to user's bin directory
  if [ -e $HOME/bin/mkcommand ]
  then
  	echo "command is already installed"
  else

  # Check if this exists first - TODO
    mkdir -p $HOME/bin

    # Add bin directory to path (bash)
    if [[ $SHELL == *"bash"* ]]
    then
       bash_config="$HOME/.bashrc"
       update_path $bash_config
    fi

  # Add bin directory to path (zsh)
    if [[ $SHELL == *"zsh"* ]]
    then
       zsh_config=$HOME/".zshrc"
       update_path $zsh_config
    fi

  # Move command into bin directory
    echo "Downloading src files from github"
    curl -s https://raw.githubusercontent.com/jearle10/command/main/src/command.sh > $HOME/bin/mkcommand
  	chmod +x $HOME/bin/mkcommand
  fi

  # Check installation completed
  if [ -e $HOME/bin/mkcommand ]
  then
    echo "Command installed!"
  fi
}


# Check the user's path and update if needed
function update_path () {
  if [[ ":$PATH:" == *":$HOME/bin:"* ]]; then
    echo "~/bin is already on path.."
  else
    echo "Adding ~/bin to path."
    echo "export PATH=$PATH:$HOME/bin" >> $1
  fi
}

install


