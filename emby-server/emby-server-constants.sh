#!/bin/bash

APPNAME='emby-server'
APPSHORTNAME='emby'
APPPATH='/var/lib/emby-server'
APPTITLE='Emby'
APPDPORT='8096'
APPSETTINGS=$APPPATH'/config/system.xml'
APPREPOSITORYNAME='emby-server'
REPOPPA='NO'
REPOKEYSREQ='YES'
REPRECVKEYSHORT='2A7D8A28'
ACCESSHOST='host = '
PORTSEARCH='port = '
USERSEARCH='username = '
PASSSEARCH='password = '
# New password encrypted
NEWPASS='atomic'
# New password unencrypted
APPNEWPASS='atomic'
APPSYSTEMD='emby-server.service'
APPINITD='emby-server'
NGINXCONFNAME='emby'
