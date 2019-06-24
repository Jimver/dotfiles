#!/bin/bash

# This script copies all theme files to the root directory

# Check for root permission
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# User directory to copy from
USER_HOME=/home/jim
# Root directory to copy to
ROOT_HOME=/root

# rsync command
mirror () {
    rsync -av --delete "$@"
}

# Mirror the gtk theme directory
mirror $USER_HOME/.themes/ $ROOT_HOME/.themes

# Mirror the icons directory
mirror $USER_HOME/.local/share/icons/ $ROOT_HOME/.local/share/icons

# Mirror the plasma theme directory
mirror $USER_HOME/.local/share/plasma/ $ROOT_HOME/.local/share/plasma

# Mirror the kvantum directory
mirror $USER_HOME/.config/Kvantum/ $ROOT_HOME/.config/Kvantum
