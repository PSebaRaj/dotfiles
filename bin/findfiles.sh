#!/bin/bash

# findfiles EXTENSION(S) (without . in front)
# Examples usage: findfiles go md
# will return all go and markdown files (with their respective directories)
for var in "$@"
do
	echo ".$var files:"
	find . \( -name  \*.$var \) -print
	echo ""
done
#find . -name '*' -type f -not -path '*.git*' | grep -wv ".git" | grep ".$1"
