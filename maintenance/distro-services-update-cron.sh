#!/bin/bash
# Force a full update, distro upgrade and autoclean
#export TERM=xterm
logger "Started AtoMiC-ToolKit Services Update"
SCRIPTPATH="$(dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )"

source "$SCRIPTPATH/inc/commons.sh"
source "$SCRIPTPATH/inc/header.sh"
CI='YES'

if [[ ! -d $SCRIPTPATH/tmp ]]; then
    mkdir "$SCRIPTPATH/tmp"
fi

source "$SCRIPTPATH/maintenance/distro-update.sh"
source "$SCRIPTPATH/batch-processes/bat-apps-update.sh"
logger "Finished AtoMiC-ToolKit Services Update"
