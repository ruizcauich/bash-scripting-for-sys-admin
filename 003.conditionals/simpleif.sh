#!/bin/bash
# simple if script for guessing a number

echo "Gess the secret number"
echo "======================"
echo ""
echo "Enter a number betwen 1 and 5"
read NUMBER
if [ $NUMBER -eq 3 ]
  then
    echo "You got it!!"
fi
