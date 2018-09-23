#!/bin/sh

if [ ! "$1" ]; then
  echo "Usage: $0 <world path> [...]" > /dev/stderr
  exit 1
fi

PACK=`./build_release.sh export`

while [ "$1" ]; do
  rm -f "$1/datapacks/$PACK"
  cp "$PACK" "$1/datapacks/"
  shift
done
