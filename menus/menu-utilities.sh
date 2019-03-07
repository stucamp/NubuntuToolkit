#!/bin/bash
# Script Name: Nubuntu Usenet Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"htop" "Media player developed by the XBMC Foundation" \
"powertop" "Media player developed by the XBMC Foundation" \
"Deluge" "Media player developed by the XBMC Foundation" \
"Filezilla" "Media player developed by the XBMC Foundation" \
"Unzip" "Media player developed by the XBMC Foundation" \
"Disks" "Media player developed by the XBMC Foundation" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "htop" )
            source "$SCRIPTPATH/htop/htop-menu.sh" ;;
        "powertop" )
            source "$SCRIPTPATH/powertop/powertop-menu.sh" ;;
        "Deluge" )
            source "$SCRIPTPATH/deluge/deluge-menu.sh" ;;
        "Filezilla" )
            source "$SCRIPTPATH/filezilla/filezilla-menu.sh" ;;
        "Unzip" )
            source "$SCRIPTPATH/unzip/unzip-menu.sh" ;;
        "Disks" )
            source "$SCRIPTPATH/disks/disks-menu.sh" ;;
        "Go Back" )
            source "$SCRIPTPATH/menus/menu-main.sh" ;;
        *)
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
