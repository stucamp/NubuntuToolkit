#!/bin/bash
# Script Name: Nubuntu Network Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"NFS" "Set up and mount nfs shares" \
"Samba" "Setup and mount samba shares" \
"Wireshark" "Network monitoring and tracking tool" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "NFS" )
            source "$SCRIPTPATH/nfs/nfs-menu.sh" ;;
        "Samba" )
            source "$SCRIPTPATH/smb/smb-menu.sh" ;;
        "Wireshark" )
            source "$SCRIPTPATH/wireshark/wireshark-menu.sh" ;;
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
