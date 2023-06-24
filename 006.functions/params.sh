#!/bin/bash
# simple example of how to pass parameters to functions

# Global variable difinition
USERNAME=$1

# function definition - start

# calculates the age in days
ageFromYearsToDays() {
   # $1 is not the same than the outer $1
   echo "Hello $USERNAME, You are $1 years old"
   echo "That makes your age equals to `expr $1 \* 365` days."
}

# function definition - end

# script - start
clear

echo "Enter your age: "
read AGE

ageFromYearsToDays $AGE
