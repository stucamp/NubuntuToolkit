#!/bin/bash
# Script Name: Nubuntu JetBrains Menu

SUBCHOICE=$(whiptail --title "Nubuntu Toolkit - Manage JetBrains" \
--menu "What would you like to do?" --backtitle "$BACKTITLE" \
--fb --cancel-button "Exit" $LINES $COLUMNS "$NETLINES" \
"Install Toolbox" "Install JetBrains Toolbox" \
"Install IntelliJ IDEA" "Installs JetBrains' Java IDE" \
"Install CLion" "Installs JetBrains' C/C++ IDE" \
"Install GoLand" "Installs JetBrains' GoLang IDE" \
"Install Pycharm" "Installs JetBrains' Python IDE" \
"Install PhpStorm" "Installs JetBrains' php IDE" \
"Install WebStorm" "Installs JetBrains' Web IDE" \
"Uninstall" "Uninstall JetBrains" \
"Manual Update" "Manually update JetBrains" \
"Go Back" "Back to Main Menu" 3>&1 1>&2 2>&3)

exitstatus=$?
if [[ $exitstatus = 0 ]]; then
    source "$SCRIPTPATH/jetbrains/jetbrains-constants.sh"
    case "$SUBCHOICE" in
        "Install Toolbox" ) source "$SCRIPTPATH/jetbrains/toolbox-installer.sh" ;;
        "Install IntelliJ IDEA" ) source "$SCRIPTPATH/jetbrains/intellij-installer.sh" ;;
        "Install CLion" ) source "$SCRIPTPATH/jetbrains/clion-installer.sh" ;;
        "Install GoLand" ) source "$SCRIPTPATH/jetbrains/goland-installer.sh" ;;
        "Install Pycharm" ) source "$SCRIPTPATH/jetbrains/pycharm-installer.sh" ;;
        "Install PhpStorm" ) source "$SCRIPTPATH/jetbrains/phpstorm-installer.sh" ;;
        "Install WebStorm" ) source "$SCRIPTPATH/jetbrains/webstorm-installer.sh" ;;
        "Uninstall" ) source "$SCRIPTPATH/jetbrains/jetbrains-uninstaller.sh" ;;
        "Manual Update" ) source "$SCRIPTPATH/jetbrains/jetbrains-update.sh" ;;
        "Go Back" ) source "$SCRIPTPATH/menus/menu-home-theater.sh" ;;
        *) source "$SCRIPTPATH/inc/invalid-option.sh" ;;
    esac
else
    source "$SCRIPTPATH/inc/thankyou.sh"
    echo
    sleep 1
    exit 0
fi
