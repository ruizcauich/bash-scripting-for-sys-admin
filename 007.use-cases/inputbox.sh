#!/bin/bash
# Example of how to use an input box

# GLOBAL DEFINITIONS

INPUTBOX=${INPUTBOX=dialog}


# FUNTION DEFINITIONS

displayInputBox() {
  echo "" > response.txt
  $INPUTBOX  --title "$1" --inputbox "$2" "$3" "$4" 2>response.txt
}

# FUNTION DEFINITIONS - END

# SCRIPT START

displayInputBox "Displaying Files" "Which file do you want to display?" "10" "30"
clear

if [ "`cat response.txt`" != "" ]; then
  cat "`cat response.txt`" 2>/dev/null
else
  echo "No file provided"
fi;

if [ "$?" != "0" ]; then
  echo "File not found"
fi

