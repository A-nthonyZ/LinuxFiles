#!/bin/sh

# Author : ajzook


#update everything
sudo apt update
sudo apt-get update
sudo apt upgrade
sudo apt-get upgrade
sudo apt autoremove

#remove unwanted apps
sudo apt remove \
	hexchat \
	thunderbird \
	hexchat-common \
	hypnotix

#grahical settings
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y-Dark'
gsettings set org.cinnamon.desktop.interface cursor-theme 'DMZ-Black'
gsettings set org.cinnamon.theme name 'Mint-Y-Dark-Purple'
