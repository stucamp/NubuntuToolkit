#!/bin/bash
# Script Name: Nubuntu Dev Menu

SUBCHOICE=$(whiptail --title "Nubuntu ToolKit - azloco.com" \
--menu "Which app would you like to manage?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"JetBrains Toolbox" "Organize, play, and stream audio and video" \
"Netbeans" "organizes all of your video, music and photo collections" \
"Eclipse" "Monitoring and tracking tool for Plex Media Server" \
"Sublime Test 3" "web-based media streamer and jukebox" \
"Atom" "web-based media streamer and jukebox fork of Subsonic" \
"VS Code" "Home server for your comics and ebooks" \
"Meld" "Home server for your comics and ebooks" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/inc/app-constant-reset.sh"
    case "$SUBCHOICE" in
        "JetBrains Toolbox" )
            source "$SCRIPTPATH/jetbrains/jetbrains-menu.sh" ;;
        "Netbeans" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
        "Eclipse" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
        "Sublime Test 3" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
        "Atom" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
        "VS Code" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
        "Meld" )
            source "$SCRIPTPATH/inc/invalid-option.sh" ;;
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
