#!/bin/sh
#
# Run python's json.tool and check for changes
#
file=$1
before=$(cat "$file") &&
	python3 -m json.tool "$file" "$file" &&
	after=$(cat "$file") &&
	test "$before" = "$after"