#!/bin/bash
# Checking user is supplying the number of arguments that the script needs

if [ "$#" != "3" ]; then
  echo "USAGE: checkargs.sh param_1 param_1 param_3"
  exit 300
fi

echo "I got what I need"

