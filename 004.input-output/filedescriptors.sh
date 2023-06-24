#!/bin/bash
# Simple example of file descriptors

# File descriptors are number associated with opened files and
# we can determine how we want to open those files
# Those FD can be inherited from a parent process to a child one
# by default there are 3 DFs inherited and are reserved (can not
# be used to assign):
# 0: standard input
# 1: standard output
# 3: standard error

echo "Enter a file name to read from and write to:"
read FILENAME

# exec command is used to assign new File Descriptors
# The signal < is used to set the file as input
# The signal > is used to set the files as output
# Combining both is used to set the files as read and write mode
exec 4<>$FILENAME

# Then we can use while as we did before to read and print
while read -r HERO; do
  echo "DC Hero name is $HERO"
done <&4 # redirects the file descriptor

echo "File was read on: `date`" >&4

# Close the file descriptor, it's a good practice to avoid
# file descriptors to be exhausted
exec 4>&-

