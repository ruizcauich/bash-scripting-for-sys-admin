#!/bin/bash
# simple example of how to handle errors

echo "Changing to directory and listing its content"
DIRECTORY=$1 

cd $DIRECTORY 2>/dev/null 


if [ "$?" == "0" ]; then
  echo "$DIRECTORY exists, we changed into it and here are the contents: "
  echo "`ls -la`"
else
  echo "$DIRECTORY does not exist, Cannot change"
  exit 1
fi

