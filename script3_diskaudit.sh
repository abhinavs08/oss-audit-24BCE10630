#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts used: arrays, for loops, conditionals, awk, cut.

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
# Adding a specific Git config path to audit
GIT_CONFIG_DIR="$HOME/.config/git"
DIRS+=("$GIT_CONFIG_DIR")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    # Check if directory actually exists before trying to read it
    if [ -d "$DIR" ]; then
        # Grab permissions using ls and awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get size and suppress permission denied errors to keep output clean
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Dir: $DIR"
        echo " -> Permissions & Owner: $PERMS | Size: $SIZE"
    else
        echo "Dir: $DIR"
        echo " -> [!] Does not exist on this system."
    fi
    echo "----------------------"
done