#!/bin/bash

KEYFILE="archive.asc"
OLD_KEYFILE="archive.asc.old"

mv "$KEYFILE" "$OLD_KEYFILE"
./gen-keys.sh

echo "Old key file:"
gpg "$OLD_KEYFILE"
echo

echo "New key file:"
gpg "$KEYFILE"
echo

echo "Diff:"
diff --color=auto <(gpg "$OLD_KEYFILE") <(gpg "$KEYFILE")

mv archive.asc.old "$KEYFILE"
