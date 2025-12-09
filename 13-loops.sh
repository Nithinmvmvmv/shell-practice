#!/bin/bash

echo "Hidden files"
ls -la | wc -1
echo "Total number of lines"

total_lines=0

# Loop through hidden files and word count programme
for file in .*; do
    # Skip . and ..
    if [[ "$file" != "." && "$file" != ".." && -f "$file" ]]; then
        lines=$(wc -l < "$file")
        total_lines=$((total_lines + lines))
    fi
done

echo "Total lines in all hidden files: $total_lines"
