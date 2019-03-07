#!/bin/bash
# Script Name: Nubuntu Toolkit Main Menu

MAINCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Platform Specifics" "Automatic Media Library Manager" \
"Graphics Cards" "Download binary files from Usenet servers" \
"General Utilities" "Download Torrents" \
"Media Applications" "Organise and serve Media" \
"Office Applications" "Media Playback" \
"Backup Tools" "Keep files and folders synchronized" \
"Development Tools" "system configuration tools e.g. Webmin" \
"Virtualization Tools" "Other miscellaneous tools" \
"Virtualization Tools" "Other miscellaneous tools" \
"Git Setup/Tools" "Other miscellaneous tools" \
"Maintenance" "Perform maintenance tasks" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$MAINCHOICE" in
        "Platform Specifics" )
            source "$SCRIPTPATH/menus/menu-pvrs.sh" ;;
        "Graphics Cards" )
            source "$SCRIPTPATH/menus/menu-usenet.sh" ;;
        "General Utilities" )
            source "$SCRIPTPATH/menus/menu-bittorrent.sh" ;;
        "Media Applications" )
            source "$SCRIPTPATH/menus/menu-personal-media-servers.sh" ;;
        "Office Applications" )
            source "$SCRIPTPATH/menus/menu-home-theater.sh" ;;
        "Backup Tools" )
            source "$SCRIPTPATH/menus/menu-sync-tools.sh" ;;
        "Development Tools" )
            source "$SCRIPTPATH/menus/menu-administration-tools.sh" ;;
        "Virtualization Tools" )
            source "$SCRIPTPATH/utils/utils-menu.sh" ;;
        "Networking Tools" )
            source "$SCRIPTPATH/utils/utils-menu.sh" ;; 
        "Git Setup/Tools" )
            source "$SCRIPTPATH/utils/utils-menu.sh" ;;       
        "Maintenance" )
            source "$SCRIPTPATH/maintenance/maintenance-menu.sh" ;;
        *)
            echo -e "${RED}Invalid Option$ENDCOLOR"
            source "$SCRIPTPATH/inc/exit.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
