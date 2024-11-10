#!/bin/bash

file=/tmp/check.txt

if [[ -f $file ]]; then
  echo "$file exists."

  # Check if the file is writable
  if [[ ! -w $file ]]; then
    echo "$file is not writable. Adding write permission..."
    chmod +w $file
  else
    echo "$file is already writable."
  fi

  # Check if the file is executable
  if [[ ! -x $file ]]; then
    echo "$file is not executable. Adding execute permission..."
    chmod +x $file
  else
    echo "$file is already executable."
  fi

  echo "Permissions have been updated for $file."
else
  echo "$file does not exist."
fi
