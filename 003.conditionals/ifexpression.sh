#!/bin/bash
# test multiple conditions in single if statement

FILENAME=$1

echo "Testing for $FILENAME existence and readability"

if [ -f $FILENAME ] && [ -r $FILENAME ] ; then
  echo "File $FILENAME exists AND is readable"
fi
