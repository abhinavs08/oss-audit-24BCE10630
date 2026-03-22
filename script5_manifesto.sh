#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts used: read, string concatenation, output redirection (>), date.
# Note on Aliases: A user could add an alias in their ~/.bashrc like:
# alias manifesto='./script5_manifesto.sh' to run this quickly!

echo "========================================="
echo " The Open Source Manifesto Generator"
echo "========================================="
echo "Answer three quick questions..."
echo ""

read -p "1. Name one FOSS tool you rely on daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one app or tool you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Constructing the paragraph and piping it into a text file
echo "Open Source Manifesto - $DATE" > "$OUTPUT"
echo "-----------------------------------" >> "$OUTPUT"
echo "I believe that software should empower, not restrict. Every day, I rely on tools like $TOOL to learn and create." >> "$OUTPUT"
echo "To me, the core of open source is $FREEDOM. It is the ability to inspect, modify, and improve the systems that run our world." >> "$OUTPUT"
echo "If given the chance, I would build a $BUILD and release it under an open license, ensuring the community can stand on my shoulders just as I have stood on the shoulders of giants." >> "$OUTPUT"

echo ""
echo "[Success] Your manifesto has been generated and saved to: $OUTPUT"
echo "Here is what it says:"
echo ""
cat "$OUTPUT"