#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Mitakshara"
SOFTWARE="VLC Media Player"

KERNEL=$(uname -r)
USER=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

echo "----------------------------------"
echo " Open Source Audit"
echo "----------------------------------"
echo "Name     : $STUDENT_NAME"
echo "Software : $SOFTWARE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER"
echo "Home     : $HOME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU GPL"
