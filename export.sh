#!/bin/sh

if [ ! "$2" ]; then
  echo "Usage: $0 <save directory> <world>" > /dev/stderr
  exit 1
fi

while [ "$2" ]; do
  cp -r fc/ "$1/$2/datapacks/"
  shift
done
