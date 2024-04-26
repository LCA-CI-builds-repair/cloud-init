#!/bin/sh
#
# Run python's json.tool and check for changes
#
# requires python 3.9 for --indent
#
file=$1
before=$(cat "$file") &&
	python3 -m json.tool "$file" > "$file.tmp" &&
	mv "$file.tmp" "$file" &&
	after=$(cat "$file") &&
	test "$before" = "$after"