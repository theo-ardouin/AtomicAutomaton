#!/bin/sh

if [ ! "$1" ]; then
  echo "Usage: $0 <world path> [...]" > /dev/stderr
  exit 1
fi

while [ "$1" ]; do
  rm -rf "$1/datapacks/fc"
  cp -r fc/ "$1/datapacks/"
  shift
done
