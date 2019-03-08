#!/bin/bash
# Script Name: Nubuntu Usenet Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Desktop" "Glances an Eye on your system. A top/htop alternative" \
"Laptop" "Open platform for beautiful analytics and monitoring" \
"Server" "Real-time performance and health monitoring" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Desktop" )
            source "$SCRIPTPATH/desktop/desktop-menu.sh" ;;
        "Laptop" )
            source "$SCRIPTPATH/laptop/laptop-menu.sh" ;;
        "Server" )
            source "$SCRIPTPATH/server/server-menu.sh" ;;;
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
