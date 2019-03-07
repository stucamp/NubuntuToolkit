#!/bin/bash
# Script Name: Nubuntu Usenet Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Emby" "Organize, play, and stream audio and video" \
"Plex" "organizes all of your video, music and photo collections" \
"Tautulli" "Monitoring and tracking tool for Plex Media Server" \
"Subsonic" "web-based media streamer and jukebox" \
"Madsonic" "web-based media streamer and jukebox fork of Subsonic" \
"Ubooquity" "Home server for your comics and ebooks" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Emby" )
            source "$SCRIPTPATH/emby-server/emby-server-menu.sh" ;;
        "Plex" )
            source "$SCRIPTPATH/plexmediaserver/plexmediaserver-menu.sh" ;;
        "Tautulli" )
            source "$SCRIPTPATH/tautulli/tautulli-menu.sh" ;;
        "Subsonic" )
            source "$SCRIPTPATH/subsonic/subsonic-menu.sh" ;;
        "Madsonic" )
            source "$SCRIPTPATH/madsonic/madsonic-menu.sh" ;;
        "Ubooquity" )
            source "$SCRIPTPATH/ubooquity/ubooquity-menu.sh" ;;
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
