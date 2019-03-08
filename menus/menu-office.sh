#!/bin/bash
# Script Name: Nubuntu Office Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"LibreOffice" "MS Office Alternative" \
"Apache OpenOffice" "MS Office Alternative" \
"WPS Office for Linux" "MS Office Alternative" \
"Calligra Suite" "MS Office Alternative" \
"Gnome Office" "MS Office Alternative" \
"Discord" "Proprietary Chat Application" \
"Slack" "Proprietary Chat Application" \
"Simple Scan" "Scanner Application" \
"yEd Graph Editor" "Proprietary Graph Editor" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "LibreOffice" )
            source "$SCRIPTPATH/libreoffice/libreoffice-menu.sh" ;;
        "Apache OpenOffice" )
            source "$SCRIPTPATH/openoffice/openoffice-menu.sh" ;;
        "WPS Office for Linux" )
            source "$SCRIPTPATH/wps/wps-menu.sh" ;;
        "Calligra Suite" )
            source "$SCRIPTPATH/calligra/calligra-menu.sh" ;;
        "Gnome Office" )
            source "$SCRIPTPATH/gnomeoffice/gnomeoffice-menu.sh" ;;
        "Discord" )
            source "$SCRIPTPATH/discord/discord-menu.sh" ;;
        "Slack" )
            source "$SCRIPTPATH/slack/slack-menu.sh" ;;
        "Simple Scan" )
            source "$SCRIPTPATH/scan/scan-menu.sh" ;;
        "yEd Graph Editor" )
            source "$SCRIPTPATH/yed/yed-menu.sh" ;;
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
