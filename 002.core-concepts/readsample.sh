#!/bin/bash
# interactive script for user input

echo "Enter your first name"
read FIRSTNAME
echo "Enter Your Last Name:"
read LASTNAME

echo ""
echo "Your Full Name is: $FIRSTNAME $LASTNAME"
echo ""
echo "Enter Your Age: "
read USERAGE

echo "In 10 Years, You will be `expr $USERAGE + 10` years old."
