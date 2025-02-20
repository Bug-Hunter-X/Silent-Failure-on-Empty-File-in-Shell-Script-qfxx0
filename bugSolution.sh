#!/bin/bash

# This script correctly handles empty files

file_to_process="my_file.txt"

# Check if the file exists
if [ -f "$file_to_process" ]; then
  # Attempt to process the file
  while IFS= read -r line || [[ -n "$line" ]]; do  # Check read's return value
    echo "Processing line: $line"
    # Process the line here...
  done < "$file_to_process"
else
  echo "Error: File not found"
exit 1
fi

# Explicitly check for empty file
if [ -s "$file_to_process" ]; then
  echo "File is not empty"
else
  echo "File is empty"
fi