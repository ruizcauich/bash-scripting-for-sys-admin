#!/bin/bash

echo sh{ot,ort,oot}

echo st{il,al}l

env | grep PATH
env | grep HOME
NEWPATH=PATH:/root
export NEWPATH=$PATH:~

# current dir where I am, like pwd
echo ~+

# print my env variables that starts with HO
echo "${!HO*}"

# set and display variable at same time
echo "${VARNAME:=somevalue}"

# expanding expression. don't need to scape
echo "$[2 * 2]"




