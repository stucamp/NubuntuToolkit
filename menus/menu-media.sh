#!/bin/bash
# Script Name: Nubuntu Media Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Emby" "Organize, play, and stream audio and video" \
"Plex" "organizes all of your video, music and photo collections" \
"Subsonic" "web-based media streamer and jukebox" \
"Madsonic" "web-based media streamer and jukebox fork of Subsonic" \
"Ubooquity" "Home server for your comics and ebooks" \
"VLC" "Cross-platform video and audio player" \
"GIMP" "Open source Photoshop alternative" \
"Pinta" "Open source MS Paint alternative" \
"Pinta" "Open source SVG application" \
"Audacity" "Multi-track audio editor" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "Emby" )
            source "$SCRIPTPATH/emby-server/emby-server-menu.sh" ;;
        "Plex" )
            source "$SCRIPTPATH/plexmediaserver/plexmediaserver-menu.sh" ;;
        "Subsonic" )
            source "$SCRIPTPATH/subsonic/subsonic-menu.sh" ;;
        "Madsonic" )
            source "$SCRIPTPATH/madsonic/madsonic-menu.sh" ;;
        "Ubooquity" )
            source "$SCRIPTPATH/ubooquity/ubooquity-menu.sh" ;;
        "VLC" )
            source "$SCRIPTPATH/vlc/vlc-menu.sh" ;;
        "GIMP" )
            source "$SCRIPTPATH/gimp/gimp-menu.sh" ;;
        "Pinta" )
            source "$SCRIPTPATH/pinta/pinta-menu.sh" ;;
        "Inkscape" )
            source "$SCRIPTPATH/inkscape/inkscape-menu.sh" ;;
        "Audacity" )
            source "$SCRIPTPATH/audacity/audacity-menu.sh" ;;
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
