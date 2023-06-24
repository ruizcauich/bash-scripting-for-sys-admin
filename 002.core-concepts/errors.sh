#!/bin/bash
# this is to show exit status types

# as soon you get an error dump out the script
# usefull when you don't want to continue executing andd brak things
# after having an not successful exit from a command
set -e

# will return the value (no errors)
expr 1 + 5
# echo the last exit status
echo $?

# the output will be an error code since doodles doesn't exist
rm doodles.sh
echo $?

expr 10 + 10
