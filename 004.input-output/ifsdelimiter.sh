#!/bin/bash
# Example of how to use IFS to delimit fields
# $IFS stands for Internal Field Separator
# It's used to indicate how the words on the command prompt 
# are delimited, by default the it's set to identify space
# tab and newline as separators

echo "Enter a filename to parse:"
read FILENAME
echo "Enter the filed separator:"
# If wnat to use space prepend with \ otherwise
# teh space won't be read
read DELIMITER


IFS="$DELIMITER"

while read -r ID NAME AGE; do
  echo "ID: $ID"
  echo "NAME: $NAME"
  echo "Age: $AGE"
done <$FILENAME
