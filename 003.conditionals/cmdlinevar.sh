#!/bin/bash
# demo of command line values passed in with out bash script

# We have access to parameters putting a $ infront the index of the 
# parameter

echo "The following item was passed in to the script at run time $1 $2"

# Setting variables with parameter values
USERNAME=$1
PASSWORD=$2

echo "The username is: $USERNAME"
echo "The provided password is: $PASSWORD"
