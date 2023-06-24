#!/bin/bash
# structure of a function 

# good practices and suggestions:

# script or global variables at the top of the shell script
CMDLINE=$1

# function definitions - start

# displays a message
simpleFunction () {
  echo "This is an ecample"
}

# display another message
secondFunction() {
  echo "This is a second function example"
}

# function definitions - stop

# beginning of the script
echo "This is the start"

secondFunction
simpleFunction
