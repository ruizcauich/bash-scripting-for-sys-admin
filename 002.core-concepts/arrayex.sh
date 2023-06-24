#!/bin/bash
# simple array and loop for display

SERVERLIST=("webserv01" "webserv02" "webserv03" "webserv04")
COUNT=0

# the @ is a special char that tells bash go through as many
# elements are in the array, you can think of @ as standing for all
# to iterate over the indexes, place an ! begore the ARRAY NAME
for ELEMENT in ${SERVERLIST[@]}; do
  echo "Processing Server: ${SERVERLIST[COUNT]}"
  echo "Server name: $ELEMENT"
  echo
  COUNT=`expr $COUNT + 1`
done

# NOTE: WE CAN NOT REDUCE ARRAYS SIZE, THERE IS NO GARBASGE COLLETOR
