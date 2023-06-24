#!/bin/bash
# this is an example of the for loop

echo "Cat all the bash scripts of the directory"

SCRIPTS=`ls *.sh`

for SCRIPT in "$SCRIPTS"; do
  CONTENT=`cat $SCRIPT`
  echo "FILE NAME: $SCRIPT - CONTENT $CONTENT"
done
