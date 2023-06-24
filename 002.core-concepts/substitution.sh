#!/bin/bash
# how to do simple substitution

# there are two ways to do it: variables and aliases

# the value will remain, it's assigning the output of the command
TODAYSDATE=`date`
# find files owned by user augusto
USERFILES=`find /home -user augusto`

echo "Today's Date: $TODAYSDATE"
echo "All files owned by Augusto: $USERFILES"

# creating internally an alias to the command, it is not being run
alias TODAY="date"
alias UFILES="find /home -user augusto"

# by default Aliases are not expanded in subshells
# we usually create alias on bash progile or bashrc making them
# available for our current env
# to expand them:
shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find /home -user augusto"

A=`TODAY`
B=`UFILES`
echo "With Alias, TODAY is: $A"
echo "With Alias, UFILES is: $B"

