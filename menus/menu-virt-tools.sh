#!/bin/bash
# Script Name: Nubuntu Usenet Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"QEMU/KVM" "Organize, play, and stream audio and video" \
"Virt-Manager" "organizes all of your video, music and photo collections" \
"Virtualbox" "Monitoring and tracking tool for Plex Media Server" \
"Docker" "web-based media streamer and jukebox" \
"Kitematic" "web-based media streamer and jukebox fork of Subsonic" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "QEMU/KVM" )
            source "$SCRIPTPATH/emby-server/emby-server-menu.sh" ;;
        "Virt-Manager" )
            source "$SCRIPTPATH/plexmediaserver/plexmediaserver-menu.sh" ;;
        "Virtualbox" )
            source "$SCRIPTPATH/tautulli/tautulli-menu.sh" ;;
        "Docker" )
            source "$SCRIPTPATH/subsonic/subsonic-menu.sh" ;;
        "Kitematic" )
            source "$SCRIPTPATH/madsonic/madsonic-menu.sh" ;;
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
