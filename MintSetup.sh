#!/bin/sh

# Author : ajzook


#update everything
sudo apt update
sudo apt-get update
sudo apt -y upgrade
sudo apt-get -y upgrade
sudo apt autoremove

#privacy
gsettings set org.cinnamon.desktop.privacy remember-recent-files false


#remove unwanted apps
sudo apt -y remove \
	hexchat \
	thunderbird \
	hexchat-common \
	hypnotix

#fix clock
timedatectl set-local-rtc 1


#grahical settings
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.interface icon-theme 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y-Dark'
gsettings set org.cinnamon.desktop.interface cursor-theme 'DMZ-Black'
gsettings set org.cinnamon.theme name 'Mint-Y-Dark-Purple'
gsettings set org.cinnamon.desktop.interface clock-use-24h false
gsettings set org.cinnamon.desktop.interface clock-show-date true
gsettings set org.cinnamon show-media-keys-osd 'small'

    #clock applet
    sudo cp ~/Documents/git/LinuxFiles/files/46.json ~/.cinnamon/configs/calendar@cinnamon.org/

    #change background
    mkdir /home/$USER/Pictures/wallpapers/
    cp images/surface-pro-6-3840x2160_785686-mm-90.jpg /home/$USER/Pictures/wallpapers/SurfacePro6.jpg
    gsettings set org.cinnamon.desktop.background picture-uri "file:///home/$USER/Pictures/wallpapers/SurfacePro6.jpg"

    #terminal
    dconf load /org/gnome/terminal/legacy/profiles:/ < ~/Documents/git/LinuxFiles/files/terminalProfiles.dconf
    dconf load /org/gnome/terminal/legacy/profiles:/:4a3418a3-ac81-4621-a0a8-54aaf030d792/ \
    < ~/Documents/git/LinuxFiles/files/myTerminalProfile.dconf

#power settings
    #power button
    gsettings set org.cinnamon.settings-daemon.plugins.power button-power 'suspend'

    #lock time
    gsettings set org.cinnamon.settings-daemon.plugins.power sleep-display-ac 600

    #suspend time
    #set to 0 for never
    #gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-ac-timeout
    
#shortcut keys
    #Lock Screen
    gsettings set org.cinnamon.desktop.keybindings.media-keys screensaver "['<Super>l']"
    gsettings set org.cinnamon.desktop.keybindings looking-glass-keybinding "['<Primary><Alt>l']"


#panel
gsettings set org.cinnamon panels-height "['1:40']"
gsettings set org.cinnamon panel-zone-symbolic-icon-sizes '[{"panelId": 1, "left": 28, "center": 28, "right": 20}]'
gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:14', 'panel1:left:2:grouped-window-list@cinnamon.org:16', 'panel1:right:4:xapp-status@cinnamon.org:18', 'panel1:right:10:notifications@cinnamon.org:19', 'panel1:right:1:removable-drives@cinnamon.org:21', 'panel1:right:7:network@cinnamon.org:24', 'panel1:right:8:sound@cinnamon.org:25', 'panel1:right:9:power@cinnamon.org:26', 'panel1:right:3:systray@cinnamon.org:44', 'panel1:right:2:keyboard@cinnamon.org:45', 'panel1:right:11:calendar@cinnamon.org:46']"


#desktop icons
gsettings set org.nemo.desktop trash-icon-visible true
gsettings set org.nemo.desktop home-icon-visible false
gsettings set org.nemo.desktop computer-icon-visible false
gsettings set org.nemo.desktop show-orphaned-desktop-icons false

#hot corners
gsettings set org.cinnamon hotcorner-layout "['expo:false:0', 'desktop:false:0', 'scale:false:0', 'desktop:true:300 ']"

#sound settings
gsettings set org.cinnamon.sounds login-enabled false
gsettings set org.cinnamon.sounds logout-enabled false
gsettings set org.cinnamon.sounds switch-enabled false
gsettings set org.cinnamon.sounds notification-enabled true
gsettings set org.cinnamon.sounds tile-enabled false
gsettings set org.cinnamon.desktop.sound maximum-volume 200


#install new software

    sudo apt -y install \
        youtube-dl \
        ffmpeg \
        vlc \
        vim \
        obs-studio\

    #Github cli install
    sudo apt -y install git
    sudo apt-key -y adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
    sudo apt update
    sudo apt -y install gh

    #pia install
    sh ~/Documents/git/LinuxFiles/files/pia-linux-3.3-06906.run

    #install handbreak
    sudo add-apt-repository -y ppa:stebbins/handbrake-releases
    sudo apt-get update
    sudo apt-get -y install handbrake-gtk


