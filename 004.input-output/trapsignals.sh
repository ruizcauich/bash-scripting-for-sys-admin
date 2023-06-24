#!/bin/bash
# Example of trapping signals to avoid program interruption or suspension

# Signals are asynchronous notifications that are sent to your script
# when certain events occur

clear 

# trap command expects at least 2 parameters
# the first one should be enclosed by '' and it's
# the action to perform in case one signal is trapped
# the sencond, third, etc parms are the signals
# SIGINT: ctrl + c
# SIGTERM: kill -9
# SIGTSTP: ctrl + z
trap 'echo "- Press Q to exit the script"' SIGINT SIGTERM SIGTSTP


while [ "$CHOICE" != "q" ] && [ "$CHOICE" != "Q" ]; do
  echo "1) First Choice"
  echo "2) Sencod Choice"
  echo "3) Third Choice"
  echo "Q) Exit"
  read CHOICE
  clear
done

