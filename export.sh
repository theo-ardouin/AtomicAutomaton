#!/bin/sh

DIRECTORY="atomic_automaton"

if [ ! "$1" ]; then
  echo 'Usage: export.sh <worldName>' > /dev/stderr
  exit 1
fi
if [ ! "$MINECRAFT" ]; then
  echo 'Missing env variable $MINECRAFT' > /dev/stderr
  exit 1
fi

WORLD_PATH="$MINECRAFT/saves/$1"

if [ ! -d "$WORLD_PATH" ]; then
  echo "$WORLD_PATH: No such directory" > /dev/stderr
  exit 1
fi

rm -rf "$WORLD_PATH/datapacks/$DIRECTORY"
cp -r "$DIRECTORY" "$WORLD_PATH/datapacks/$DIRECTORY"

echo "Done."
