#!/bin/sh

DIRECTORY="atomic_automaton"

if [ ! "$1" ]; then
  echo "Usage: $0 <version>" > /dev/stderr
  exit 1
fi

ZIPNAME="atomic_automaton.$1.zip"

cd "$DIRECTORY"

rm -f "../releases/$ZIPNAME"
zip -r "../releases/$ZIPNAME" * > /dev/stderr

echo "./releases/$ZIPNAME"
