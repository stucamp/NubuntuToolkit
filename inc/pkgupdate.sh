#!/bin/bash

echo
sleep 1
echo -e "$YELLOW--->Refreshing packages list...$ENDCOLOR"
sudo apt-get update -qq
echo 'Done'
