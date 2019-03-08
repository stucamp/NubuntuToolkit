#!/bin/bash
# Script Name: AtoMiC Emby Settings update

echo
echo -e "${YELLOW}--->Updating Settings file...$ENDCOLOR"

sudo sed -i "s@## EMBY_USER=@EMBY_USER=$UNAME@g" "/etc/emby-server.conf" || { echo -e "${RED}Replacing EMBY_USER failed.$ENDCOLOR" ; exit 1; }
sudo sed -i "s@## EMBY_GROUP=@EMBY_GROUP=$UGROUP@g" "/etc/emby-server.conf" || { echo -e "${RED}Replacing EMBY_GROUP failed.$ENDCOLOR" ; exit 1; }
sudo sed -i "s@## EMBY_PIDFILE=@EMBY_PIDFILE=/usr/lib/$APPNAME/$APPNAME.pid@g" "/etc/emby-server.conf" || { echo -e "${RED}Replacing EMBY_GROUP failed.$ENDCOLOR" ; exit 1; }

echo 'Updated Settings file with new values'
