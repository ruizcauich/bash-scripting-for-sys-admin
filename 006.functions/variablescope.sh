#!/bin/bash
# sample of variable scope

# global variable declarations
GLOBALVAR="Globally Visible"

# Function definition - start
simpleFunction() {
  # Local Variable
  LOCALVAR="Locally Visible"

  echo "From the function, the value of LOCALVAR is $LOCALVAR"
}

# Function definition - stop

# Script - start
clear

echo "Starting script"
echo ""
echo "Before running the function, GLOBALVAR = $GLOBALVAR"
echo "Before running the function, LOCALVAR = $LOCALVAR"
echo ""
echo "Running simpleFunction"
echo ""
simpleFunction
echo ""
echo "Function has finished"
echo ""
echo "After running the function, GLOBALVAR = $GLOBALVAR"
echo "After running the function, LOCALVAR = $LOCALVAR"

