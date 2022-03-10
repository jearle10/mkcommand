## About

mkcommand is a linux/unix cli tool that creates commands using user defined scripts

e.g. A script called myscript.sh would normally be executed
```shell
. ./myscript.sh 
```

Using mkcommand we can run the following

```shell
mkcommand myscript.sh
```

Following this, myscript.sh can be executed from any location on your machine
by typing it's name
```shell
myscript # No path or file extension required
``` 


## Installation

You can use the helper script below to install mkcommand

```shell
curl -s https://raw.githubusercontent.com/jearle10/command/main/install.sh | bash
```