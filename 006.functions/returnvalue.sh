#!/bin/bash
# simple example of how to return values from functions

# Global variables definition
YES=0
NO=1

ONE=$1
TWO=$2
THREE=$3

# Function definitions - start

# Verifies if we have recieved the three parameters
verifyParams () {
  # -z is used to test none or null values
  if [ -z "$THREE" ]; then
    echo "Not all parameteres were provided"
    return $NO
  else
    echo "Three parameteres were rovided."
    echo "PARAM 1: $ONE"
    echo "PARAM 2: $TWO"
    echo "PARAM 3: $THREE"
    return $YES
  fi
}
# Function definitions - stop

# Script - start

verifyParams
RESULT=$?

if [ $RESULT -eq $NO ] ; then
  echo "Script usage:"
  echo "returnvalue.sh <param 1> <param 2> <param 3>"
  exit 1
fi

