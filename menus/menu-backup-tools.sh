#!/bin/bash
# Script Name: Nubuntu Backup Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Duplicati" "Command line program to sync files and directories" \
"Duplicity" "Simple GUI for rclone command line tool" \
"Bacula" "Fast and reliable file and folder synchronization" \
"rsync" "Open Source Continuous File Synchronization" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Duplicati" )
            source "$SCRIPTPATH/duplicati/duplicati-menu.sh" ;;
        "Duplicity" )
            source "$SCRIPTPATH/duplicity/duplicity-menu.sh" ;;
        "Bacula" )
            source "$SCRIPTPATH/bacula/bacula-menu.sh" ;;
        "rsync" )
            source "$SCRIPTPATH/rsync/rsync-menu.sh" ;;
        "Syncthing" )
            source "$SCRIPTPATH/syncthing/syncthing-menu.sh" ;;
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
