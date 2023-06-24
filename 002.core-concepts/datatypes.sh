#!/bin/bash
# by default types are implicit declared, but it is possible to
# explicitly do it

# set a type, unset a type or display the value
MYVAR=4

declare -p MYVAR

# bash also tries to inplicit convert the types, tha's why the following works
echo "`expr $MYVAR + 5`"

# declaring as integer
declare -i NEWVAR=10
declare -p NEWVAR

# tring to assign to a string

NEWVAR="Something"
echo $NEWVAR

declare +i NEWVAR
declare -p NEWVAR
NEWVAR="SOMETHING"
echo $NEWVAR

# read only
declare -r READONLY="read only var"
READONLY="OTHER VALUE"

readonly MYREADONLY="reand only too"
declare -p MYREADONLY
