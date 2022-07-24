#!/bin/bash

# to use: replace username with your Yale NetID
# Patrick SebaRaj, YC '24

username=pds36

while getopts 'cd:u:' OPTION; do
  case "$OPTION" in
	c)
	  echo "Connecting $username to the Zoo..."
	  ssh -i ~/.ssh/zoo $username@node.zoo.cs.yale.edu
	  ;;
	d)
	  downloadtarget="$OPTARG"
	  echo "Pulling ~/$downloadtarget from the Zoo..."
	  scp -r $username@node.zoo.cs.yale.edu:~/$downloadtarget .
	  ;;
	u)
	  remotetarget="$OPTARG"
	  echo "Pushing ${PWD} to ~/$remotetarget on the Zoo..."
      scp -r "${PWD}" $username@node.zoo.cs.yale.edu:~/$remotetarget
	  ;;
	?)
	  echo "Zoo Actions usage: requires one flag: [-c] [-d DIR] [-u DIR]"
	  echo "[-c]: Connect to the Zoo"
	  echo "[-d]: Download directory DIR from the Zoo to current working directory"
	  echo "[-u]: Upload current working directory to directory DIR on the Zoo"
	  exit 1
	  ;;
  esac
done
shift "$(($OPTIND -1))"


