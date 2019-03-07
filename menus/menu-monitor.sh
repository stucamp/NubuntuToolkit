#!/bin/bash
# Script Name: Nubuntu Monitor Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Glances" "Glances an Eye on your system. A top/htop alternative" \
"Grafana" "Open platform for beautiful analytics and monitoring" \
"NetData" "Real-time performance and health monitoring" \
"phpSysInfo" "Display info about your system" \
"Webmin" "Web-based system administration" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Glances" )
            source "$SCRIPTPATH/glances/glances-menu.sh" ;;
        "Grafana" )
            source "$SCRIPTPATH/grafana/grafana-menu.sh" ;;
        "NetData" )
            source "$SCRIPTPATH/netdata/netdata-menu.sh" ;;
        "phpSysInfo" )
            source "$SCRIPTPATH/phpsysinfo/phpsysinfo-menu.sh" ;;
        "Webmin" )
            source "$SCRIPTPATH/webmin/webmin-menu.sh" ;;
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
