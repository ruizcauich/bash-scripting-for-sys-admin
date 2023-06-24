#/bin/bash

# Simple example of how to display an infobox using dialog (dialog should be installed)

# GLOBAL VARIABLES
INFOBOX=${INFOBOX=dialog}
MSGBOX=${MSGBOX=dialog}

# FUNCTION DEFINITIONS - START

# displays a info box message
displayInfoBox() {
  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

# Shows a message box with a default OK button
displayMessageBox() {
  $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
  # No need to sleep
}

# FUNCTION DEFINITIONS - STOP


# SCRIPT START
if [ "$1" == "shutdown" ]; then
  displayMessageBox "WARNING!!" "The system is being shuting down, press ok when you are ready to continue" "11" "21" 
  echo "Shutting down..."
else
 displayInfoBox "Message..." "Nothing to do at this moment..." "11" "21" "7"
 echo "Cancelled"
fi

# SCRIPT - STOP


