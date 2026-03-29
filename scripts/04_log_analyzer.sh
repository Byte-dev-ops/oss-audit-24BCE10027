#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    read -p "Press Enter to exit..."
    exit 1
fi

RETRY=0
while true; do
    if [ -s "$LOGFILE" ]; then break; fi
    echo "File is empty, retrying in 2 seconds..."
    sleep 2
    RETRY=$((RETRY + 1))
    if [ $RETRY -ge 3 ]; then
        echo "File still empty after 3 tries. Exiting."
        exit 1
    fi
done

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Found '$KEYWORD' $COUNT times in $LOGFILE"

if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 matches ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi

read -p "Press Enter to exit..."
