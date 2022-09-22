#!/bin/bash
cd /data

for FILE in *.md; do
 OUTPUT_FILE="$(echo "$FILE" | cut -f 1 -d '.').pdf"
 echo "Generating PDF $OUTPUT_FILE from $FILE"
 pandoc -s -t markdown -w pdf -o "$OUTPUT_FILE" /template/header.md "$FILE" /template/footer.md
done
