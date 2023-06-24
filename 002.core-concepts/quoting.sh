#!/bin/bash

# will try to get the COL value and substitute it within the double qoutes
echo "$COL"

# if we want to echo the character $ we need to scape
echo "\$COL"

# use single quotes to print the literal value of the character
echo '$COL'

# use backticks to execute command and substitute the result in
# the string
echo "`date`"
# if we don't have any surrounding test
echo `date`
# else
echo "Today's date is: `date`"

echo "\""
echo "\\"
echo '\'
# following will fail
echo "\"
echo "\""



