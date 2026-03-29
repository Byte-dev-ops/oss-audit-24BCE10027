#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "======================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        FS_USAGE=$(df -h "$DIR" 2>/dev/null | awk 'NR==2 {print $5}')
        echo "$DIR | Perms: $PERMS | Size: $SIZE | Used: $FS_USAGE"
    else
        echo "$DIR does not exist on this system"
    fi
done

VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
    echo "VLC config exists. Permissions: $PERMS"
else
    echo "VLC config not found at $VLC_CONFIG"
fi

read -p "Press Enter to exit..."
