#!/bin/bash
# Script 1: System Identity Report
# Author: Mukul | Course: Open Source Software

STUDENT_NAME="Mukul"
SOFTWARE_CHOICE="VLC Media Player"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(uname -o)
HOME_DIR=$HOME
CURRENT_DATE=$(date)

echo "================================"
echo " Open Source Audit - $STUDENT_NAME"
echo "================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distribution   : $DISTRO"
echo "Kernel         : $KERNEL"
echo "Current User   : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "Uptime         : $UPTIME"
echo "Date and Time  : $CURRENT_DATE"
echo "--------------------------------"
echo "VLC is distributed under the GPL v2 license."
echo "================================"
read -p "Press Enter to exit..."
