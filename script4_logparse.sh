#!/bin/bash
# Script 4: Log File Analyzer
# Concepts used: while-read loop, arguments, counters, conditionals.
# Usage: ./script4_logparse.sh <file> <keyword>

LOGFILE=$1
# Default to searching for "error" if you don't provide a keyword
KEYWORD=${2:-"error"}
COUNT=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <path_to_log_file> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found or inaccessible."
    exit 1
fi

echo "Scanning $LOGFILE for the keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    # -i makes grep case insensitive, -q keeps it quiet
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------------"
echo "Result: Keyword '$KEYWORD' found $COUNT times."

# If the file had matches, show the last 5 as a preview
if [ "$COUNT" -gt 0 ]; then
    echo "Here are the last few occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi