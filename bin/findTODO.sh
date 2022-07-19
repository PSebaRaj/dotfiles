#!/bin/bash

# Dependencies: Ripgrep
# Find all instances of TODO in codebase
# writes file + TODO message to TODO.txt AND prints it out

echo `date` > TODO.txt;
rg TODO >> TODO.txt;
cat TODO.txt;

