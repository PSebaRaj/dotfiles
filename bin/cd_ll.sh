#!/bin/bash

# equivalent to cd && ll
# Yes, thata's definitely too much to type

dir="$1"
if [[ -d "$dir" ]]; then
	cd "$dir" >/dev/null; ls -l --color=auto
else
	echo "cl: $dir: Directory not found"
	# To prevent from accidentally going to ~ and ll-ing
fi

