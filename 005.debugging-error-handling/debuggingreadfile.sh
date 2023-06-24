#!/bin/bash
# reading a file one line at a time

echo "Enter the filename"

# DEBUG START
set -x

read FILENAME

while read -r HERO; do
  
  # SKIP DEBUGGING THE echo	
  set +x 

  echo "Name of the hero is $HERO"

  set -x
done < "$FILENAME" 

# DEBUG STOP
set +x
