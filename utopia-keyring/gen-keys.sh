#!/bin/bash

KEYS=(
    # Utopia Repository Signing Key <admin@utopia-repository.org>
    8AAA71DAE3BD50D5539A0100200A481378601485
)

OUTFILE="utopia-repository.asc"

echo "Ok, generating $OUTFILE"
gpg --armor --export "${KEYS[@]}" > "$OUTFILE"
echo "Done:"
gpg --show-keys "$OUTFILE"  # show the resulting file info
