#!/bin/bash

HOME="/home/vscode"
DEVCONT="/workspaces/devs/.devcontainer"

############ 
## Powerline 
############
## Installing powerline 

sudo apt update 
sudo apt install --yes powerline
cat ${DEVCONT}/powerline >> ${HOME}/.bashrc 

## Two lines powerline 
sudo cp ${DEVCONT}/default.twolines.json /usr/share/powerline/config_files/themes/shell
sudo sed -i 's/default_leftonly/default.twolines/g' /usr/share/powerline/config_files/config.json

############ 
## Trash 
############
sudo apt install --yes trash-cli

############ 
## TL;DR
############
sudo apt install --yes tldr

############ 
## FZF
############
sudo apt install --yes fzf
sudo apt install --yes bat
git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf
cat ${DEVCONT}/fzf >> ${HOME}/.bashrc 

############ 
## Weather
############
echo -e "\n weather() { curl wttr.in/$@; }" >> ${HOME}/.bashrc
