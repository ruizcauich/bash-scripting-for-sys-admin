#/bin/bash

# Simple example of how to display an infobox using dialog (dialog should be installed)

# GLOBAL VARIABLES
INFOBOX=${INFOBOX=dialog}


# FUNCTION DEFINITIONS - START

# displays a info box message
displayInfoBox() {
  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

# FUNCTION DEFINITIONS - STOP


# SCRIPT START
if [ "$1" == "shutdown" ]; then
  displayInfoBox "WARNING!!" "The system is shuting down..." "11" "21" "7"
else
 displayInfoBox "Message..." "Nothing to do at this moment..." "11" "21" "7"
 echo "Cancelled"
fi

# SCRIPT - STOP


