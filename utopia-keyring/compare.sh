#!/bin/bash

KEYFILE="archive.asc"
OLD_KEYFILE="archive.asc.old"

mv "$KEYFILE" "$OLD_KEYFILE"

echo "Old key file:"
gpg "$OLD_KEYFILE"
echo

echo "New key file:"
./gen-keys.sh

echo "Diff:"
diff --color=auto <(gpg "$OLD_KEYFILE") <(gpg "$KEYFILE")

mv "$OLD_KEYFILE" "$KEYFILE"
