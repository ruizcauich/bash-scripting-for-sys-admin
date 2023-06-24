#!/bin/bash

clear
echo "    MAIN MENU"
echo "==================="
echo "1) Choice one"
echo "2) Choice Two"
echo "3) Choice Three"
echo ""
echo "Enter choice"
read CHOICE

echo ""

case $CHOICE in
  1)
    echo "You have chosen the  first option"
    ;; # breaks the case
  2)
    echo "Choice number Two was selected";;
  3)
    echo "This is for the last option";;
  *)
    echo "Read the menu again!";;
esac

