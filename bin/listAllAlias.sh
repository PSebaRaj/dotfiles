#!/bin/bash

# List (and highlight because grep is great)
# all created aliases in my zshrc

grep -in --color -e '^alias\s+*' ~/.zshrc | sed 's/alias //' | grep --color -e ':[a-z][a-z0-9]*'

