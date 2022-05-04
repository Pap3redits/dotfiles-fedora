#!/bin/bash


cp -r .config ~/.config

sudo chmod +x ~/.config/awesome/noobie/filesystem.sh ~/.config/awesome/noobie/memory.sh

################################################################################################
#################################    Enabling RPM Fusion   #####################################
################################################################################################

sudo dnf install \
	  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
	  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

################################################################################################
#################################    Installing Brave Browser   ################################
################################################################################################

sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

################################################################################################
#################################    Installing Required Packages   ############################
################################################################################################

sudo dnf install $(cat packages|xargs)

################################################################################################
#################################    Changing Shell   ##########################################
################################################################################################

chsh -s /usr/bin/fish


