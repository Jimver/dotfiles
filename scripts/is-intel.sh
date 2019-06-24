#!/bin/bash

# This script checks if the current video driver is intel, 0 means yes, 1 means no
 
current=$(optimus-manager --print-mode)

if [[ $current == *"intel"* ]]; then
  exit 0
fi

exit 1
