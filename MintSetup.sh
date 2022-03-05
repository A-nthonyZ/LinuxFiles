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

#install new software

    #Github cli install
    sudo apt install git
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt install gh


#grahical settings
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y-Dark'
gsettings set org.cinnamon.desktop.interface cursor-theme 'DMZ-Black'
gsettings set org.cinnamon.theme name 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.interface clock-use-24h false
gsettings set org.cinnamon.desktop.interface clock-show-date true
