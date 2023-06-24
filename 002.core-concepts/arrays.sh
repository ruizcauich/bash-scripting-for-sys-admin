#!/bin/bash

# Arrays are space delimited
MYARRAY=("First" "Second" "Third")

# It echoes the first item
echo $MYARRAY

# Print by index
echo ${MYARRAY[0]}
echo ${MYARRAY[1]}
echo ${MYARRAY[2]}
echo ${MYARRAY[300]}
# prints all the items
echo ${MYARRAY[*]}

# assign new value
MYARRAY[3]="Fourth"
echo ${MYARRAY[*]}

# decalring it with commas will treat it as one single value
NEWARRAY=("ONE","TWO","THREE")
echo $NEWARRAY
echo ${NEWARRAY[0]}
echo ${NEWARRAY[2]}

