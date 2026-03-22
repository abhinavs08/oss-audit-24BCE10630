#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts used: for loops, if-then-else, case statements, output redirection.

# Checking common FOSS packages including our target, Git.
PACKAGES=("git" "apache2" "mysql-server" "firefox")

echo "Starting FOSS Package Inspection..."
echo "-----------------------------------"

for PACKAGE in "${PACKAGES[@]}"; do
    # Using dpkg-query to quietly check if the package is installed
    if dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "ok installed"; then
        VERSION=$(dpkg-query -W -f='${Version}' "$PACKAGE")
        echo "[ INSTALLED ] $PACKAGE (Version: $VERSION)"
    else
        echo "[ MISSING ] $PACKAGE is NOT installed."
    fi

    # Case statement for the philosophy note
    case $PACKAGE in
        apache2)
            echo " -> Philosophy: The web server that built the open internet." ;;
        mysql-server)
            echo " -> Philosophy: Open source data management at the heart of millions of apps." ;;
        firefox)
            echo " -> Philosophy: A nonprofit browser fighting for an open web." ;;
        git)
            echo " -> Philosophy: The decentralized version control tool that Linus built." ;;
        *)
            echo " -> Philosophy: Community-driven software." ;;
    esac
    echo ""
done