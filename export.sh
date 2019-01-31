#!/bin/sh

DIRECTORY="atomic_automaton"

if [ ! "$WORLD" ]; then
  echo 'Missing env variable $WORLD' > /dev/stderr
  exit 1
fi

rm -rf "$WORLD/datapacks/$DIRECTORY"
cp -r "$DIRECTORY" "$WORLD/datapacks/$DIRECTORY"
