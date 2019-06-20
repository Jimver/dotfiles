#!/bin/bash 

# This script checks if the current video driver is nvidia, 0 means yes, 1 means no

current=$(optimus-manager --print-mode)

if [[ $current == *"nvidia"* ]]; then
  exit 0
fi

exit 1
