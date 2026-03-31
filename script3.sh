#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Report"
echo "----------------"

for D in "${DIRS[@]}"
do
    if [ -d "$D" ]
    then
        PERM=$(ls -ld $D | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $D 2>/dev/null | cut -f1)
        echo "$D -> $PERM | Size: $SIZE"
    else
        echo "$D not found"
    fi
done

echo ""
echo "Checking VLC config folder..."

VLC_DIR="$HOME/.config/vlc"

if [ -d "$VLC_DIR" ]
then
    ls -ld $VLC_DIR
else
    echo "VLC config folder not present"
fi
