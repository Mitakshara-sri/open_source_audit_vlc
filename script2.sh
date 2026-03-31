#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

if dpkg -l | grep -qw $PACKAGE
then
    echo "$PACKAGE is installed on this system"
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
    vlc) echo "VLC is an open-source media player which supports almost all formats" ;;
    firefox) echo "Firefox is an open-source browser focused on privacy" ;;
    apache2) echo "Apache is a popular web server" ;;
    mysql) echo "MySQL is a database system used in many apps" ;;
    *) echo "No info available" ;;
esac
