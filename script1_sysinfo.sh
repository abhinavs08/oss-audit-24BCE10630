#!/bin/bash
# Script 1: System Identity Report
# Author: Abhinav Singh (24BCE10630) | Course: Open Source Software
# Concepts used: variables, command substitution, basic output formatting.

SOFTWARE_CHOICE="Git"

# Pulling system info dynamically
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date '+%A, %d %B %Y')

echo "=================================================="
echo "  Open Source Audit — Abhinav Singh"
echo "  Target Software   — $SOFTWARE_CHOICE"
echo "=================================================="
echo "Date    : $CURRENT_DATE"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME (Home: $HOME)"
echo "Uptime  : $UPTIME"
echo "--------------------------------------------------"
echo "License Note: The Linux kernel running this system"
echo "is protected under the GNU General Public License v2,"
echo "ensuring it remains free and open for everyone."
echo "=================================================="