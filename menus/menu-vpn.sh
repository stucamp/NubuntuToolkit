#!/bin/bash
# Script Name: Nubuntu Usenet Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Private Internet Access" "GUI for PIA VPN" \
"Nord VPN" "Terminal VPN for NordVPN users" \
"OpenVPN" "Setup of person VPN" \
"OpenVPN" "Setup of person VPN" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Private Internet Access GUI" )
            source "$SCRIPTPATH/nzbget/nzbget-menu.sh" ;;
        "Nord VPN" )
            source "$SCRIPTPATH/nzbhydra/nzbhydra-menu.sh" ;;
        "OpenVPN" )
            source "$SCRIPTPATH/sabnzbdplus/sabnzbdplus-menu.sh" ;;
        "OpenVPN" )
            source "$SCRIPTPATH/sabnzbdplus/sabnzbdplus-menu.sh" ;;
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
