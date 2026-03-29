#!/bin/bash
# Script 2: Package Inspector

PACKAGE="vlc"

if dpkg -l "$PACKAGE" &>/dev/null || command -v "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    if command -v dpkg &>/dev/null && dpkg -s "$PACKAGE" &>/dev/null; then
        dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
    else
        echo "Version: $($PACKAGE --version 2>&1 | head -1)"
    fi
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    vlc) echo "VLC: media player that can handle basically any format you throw at it" ;;
    git) echo "Git: the version control system that holds everything together" ;;
    firefox) echo "Firefox: still fighting to keep the web open and free" ;;
    *) echo "$PACKAGE: part of the open source ecosystem" ;;
esac

read -p "Press Enter to exit..."
