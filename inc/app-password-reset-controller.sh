#!/bin/bash
# Script Name: Nubuntu Password Reset

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
echo -e "${GREEN}AtoMiC $APPTITLE Password Reset Script$ENDCOLOR"
source "$SCRIPTPATH/inc/pause.sh"

if DoesAppFolderExist; then
    source "$SCRIPTPATH/inc/app-settings-check.sh"
    source "$SCRIPTPATH/inc/app-stop.sh"
    source "$SCRIPTPATH/inc/app-user-search.sh"
    source "$SCRIPTPATH/inc/app-password-search.sh"
    source "$SCRIPTPATH/inc/app-password-reset.sh"
    source "$SCRIPTPATH/inc/app-start.sh"
    source "$SCRIPTPATH/inc/app-reset-confirmation.sh"
    source "$SCRIPTPATH/inc/thankyou.sh"
fi
source "$SCRIPTPATH/inc/exit.sh"
