#!/bin/bash


cp -r .config ~/.config

sudo chmod +x ~/.config/awesome/noobie/filesystem.sh ~/.config/awesome/noobie/memory.sh

sudo dnf install \
	  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install \
	  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install $(cat packages|xargs)

