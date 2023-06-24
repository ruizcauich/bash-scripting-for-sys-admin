#!/bin/bash
# example of overriding events to run our custom exit command

# GLOBAL VARIABE DEFINITIONS
TEMPFILE1="tempfile1.txt"
TEMPFILE2="tempfile2.txt"

trap "myExit" EXIT

# FUNCTION DEFINITIONS - START
myExit() {
   echo "Exiting from program..."
   echo "Removing temp files..."
   rm -rf tempfile*.txt
   exit 255
}

# FUNCTION DEFINITIONS - END

# SCRIPT - START
echo "This is a no sense content for the tempfile 1">$TEMPFILE1
echo "This is another no sence sontent for the tempfle 2">$TEMPFILE2

# Trying to copy a file to newfile.txt
cp -rf $1 newfile.txt 2>/dev/null

if [ "$?" -eq "0" ]; then
  echo "Everything worked out ok"
else
  echo "Something went wrong"
  exit 1
fi

# SCRIPT - END
