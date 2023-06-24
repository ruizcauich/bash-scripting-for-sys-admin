#!/bin/bash
# test for the existence of a file
FILENAME=$1

echo "Testing for the existence of a file called $FILENAME"

# if you want to negate the condition (test the non existence)
# place ! before the condition: [ ! -a $FILENAME ]
if [ -a $FILENAME ]
  then
    echo "File $FILENAME does exist!"
fi
