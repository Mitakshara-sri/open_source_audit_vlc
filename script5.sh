#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "Tool you use daily: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
FILE="my_manifesto.txt"

echo "Date: $DATE" > $FILE
echo "I use $TOOL in my daily work." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "In future, I want to build $BUILD and share it openly." >> $FILE

echo ""
echo "Your manifesto is saved in $FILE"
cat $FILE
