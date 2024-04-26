#!/bin/sh
#
# Run python's json.tool and check for changes
#
# requires python 3.9 for --indent
#
file=$1
before=$(cat "$file")
tmpfile=$(mktemp)
python3 -m json.tool --indent 2 "$file" > "$tmpfile"
after=$(cat "$tmpfile")
test "$before" = "$after"
rm "$tmpfile"
