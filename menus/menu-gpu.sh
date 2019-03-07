#!/bin/bash
# Script Name: Nubuntu GPU Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"AMD" "for AMD Graphics Cards" \
"Nvidia" "for Nvidia Graphics Cards" \
"Intel" "for Intel Graphics Cards" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "AMD" )
            source "$SCRIPTPATH/amd/amd-menu.sh" ;;
        "Nvidia" )
            source "$SCRIPTPATH/nvidia/nvidia-menu.sh" ;;
        "Intel" )
            source "$SCRIPTPATH/intel/intel-menu.sh" ;;
        *)
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
