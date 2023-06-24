#!/bin/bash
# simple example of if then else statements

clear

echo "Enter a number between 1 and 3:"
read NUMBER

# if you enter a value that is not a number
# you will see errors displayed on the standard output
# to avoid displaying these errors, let's redirect the errors
# to dev/null.
# There are 3 diferent types of outputs:
#   0: the standard input
#   1: the standard output
#   2: the standard error
if [ "$NUMBER" -eq "1" ] 2>/dev/null; then
  echo "You entered $NUMBER"
elif [ "$NUMBER" -eq "2" ] 2>/dev/null; then
  echo "You successfully entered #2"
elif [ "$NUMBER" -eq "3" ] 2>/dev/null; then
  echo "You got it!! It's #3"
else
 echo "You didn't follow the directions!!"
fi
