#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
read -p "1. One open source tool you use daily: " TOOL
read -p "2. One word for what freedom means to you: " FREEDOM
read -p "3. One thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "### My Open Source Manifesto ###" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "I use $TOOL every day and I never paid for it." >> "$OUTPUT"
echo "Freedom to me means $FREEDOM and open source is built on that." >> "$OUTPUT"
echo "If I could build anything, I would make $BUILD and give it away." >> "$OUTPUT"

echo "Saved to $OUTPUT"
cat "$OUTPUT"
read -p "Press Enter to exit..."

