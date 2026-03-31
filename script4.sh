#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]
then
    echo "File not found"
    exit 1
fi

while read LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "The word '$KEYWORD' appeared $COUNT times"

echo ""
echo "Last few matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
