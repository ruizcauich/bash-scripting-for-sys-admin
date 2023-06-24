#!/bin/bash
# example of a menu

# GLOBAL VARIABLES
MENUBOX=${MENUBOX=dialog}

# FUNCTION DECLARATIONS - START

# Displays a menu
displayDialogMenu() {
  # Since dialog is using stdout to print content, it uses stderr to redirect user input
  $MENUBOX --title "[ M A I N   M A N U ]" --menu "Use UP/DOWN arrows to select the number of your choice and ENTER" 15 30 4 1 "Print Hello World" 2 "Print goodbye" 3 "Print greeting" X "Exit" 2>answer.txt
  #                                                                                                                  height width number_of_choices choice_mark "choice text"
}

# FUNCTION DECLATATIONS - STOP

# SCRIPT - START

displayDialogMenu

case "`cat answer.txt`" in
  1) clear
     echo "Hello World";;
  2) clear 
     echo "Goodbye";;
  3) clear
     echo "Hello User!";;
  X) clear
     echo "Exit";;
esac

# SCRIPT - END

