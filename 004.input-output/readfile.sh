#!/bin/bash
# reading a file one line at a time

echo "Enter the filename"
read FILENAME

while read -r HERO; do
  echo "Name of the hero is $HERO"
done < "$FILENAME" 
# Using < is redirecting FILENAME as input of the while loop
