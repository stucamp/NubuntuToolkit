#!/bin/bash
# Script Name: AtoMiC Kodi Installer

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Installer Script$ENDCOLOR"
sudo killall -9 kodi.bin >/dev/null 2>&1
source "$SCRIPTPATH/inc/app-uninstall.sh"
source "$SCRIPTPATH/$APPNAME/$APPNAME-repository-configurator.sh"
source "$SCRIPTPATH/inc/app-repository-add.sh"
source "$SCRIPTPATH/inc/pkgupdate.sh"
source "$SCRIPTPATH/utils/ffmpeg/ffmpeg-installer.sh"
source "$SCRIPTPATH/kodi/kodi-constants.sh"
source "$SCRIPTPATH/inc/app-install-deps.sh"
source "$SCRIPTPATH/inc/app-install.sh"
source "$SCRIPTPATH/inc/app-set-permissions.sh"
sudo usermod -a -G cdrom,audio,video,plugdev,users,dialout,dip,input "$UNAME"
source "$SCRIPTPATH/inc/app-install-confirmation.sh"
source "$SCRIPTPATH/inc/thankyou.sh"
source "$SCRIPTPATH/inc/exit.sh"
