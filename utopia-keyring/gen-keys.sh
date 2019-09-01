#!/bin/bash

KEYS=(
    # Utopia Repository Automatic Signing Key <webmaster@overdrivenetworks.com>
    4A4A7B0E6EFB2FD90FD4F58C4A8C96B8EEBB01E6
)

OUTFILE="utopia-archive-keyring.asc"

echo "Ok, generating $OUTFILE"
gpg --armor --export "${KEYS[@]}" > "$OUTFILE"
echo "Done:"
gpg "$OUTFILE"  # show the resulting file info
