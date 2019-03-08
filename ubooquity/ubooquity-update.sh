#!/bin/bash
# Script Name: AtoMiC Ubooquity Updater

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Update Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-stop.sh"
    source "$SCRIPTPATH/utils/java/java-installer.sh"
    source "$SCRIPTPATH/ubooquity/ubooquity-constants.sh"
    if "$SCRIPTPATH/ubooquity/ubooquity-version-handler.sh"; then
        source "$SCRIPTPATH/$APPNAME/$APPNAME-download-install.sh"
    fi
    source "$SCRIPTPATH/inc/app-set-permissions.sh"
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-update-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi
source "$SCRIPTPATH/inc/exit.sh"
