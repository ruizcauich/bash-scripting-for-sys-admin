#!/bin/bash
# while loop example

echo "Enter a sentence"
read SENTENCETODISPLAY
echo ""
echo "Enter the number of times you want to display the sentence"
read TIMESTODISPLAY
echo ""

COUNT=1

while [ $COUNT -le $TIMESTODISPLAY ]
do
  echo "$SENTENCETODISPLAY - $COUNT"
  COUNT=`expr $COUNT + 1`
done
