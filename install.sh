#!/bin/bash


cp -r .config ~/.config

sudo chmod +x ~/.config/awesome/noobie/filesystem.sh ~/.config/awesome/noobie/memory.sh

sudo dnf install $(cat packages|xargs)

