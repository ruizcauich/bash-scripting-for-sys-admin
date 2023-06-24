#!/bin/bash
# Checking argiuments with a usage statement

# checking argument 3 is set, if not it will prints message after ?
: ${3?"USAGE: checkargs2.sh $1 ARGUMENT $2 ARGUMENT $3 ARGUMENT"}

echo "I got what I need"
