#!/bin/bash

if [ "$#" -ne 2 ] || [ ! -d "$1" ]; then
  echo "you fail"
  exit 1
fi
echo "The number of files are $(find $1 -type f | wc -l) and the number of matching lines are $(grep -r $2 $1 | wc -l)"

