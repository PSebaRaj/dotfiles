#!/usr/bin/env bash

# credit goes to ThePrimeagen
languages=`echo "golang c typescript nodejs js python lua bash html css" | tr ' ' '\n'`
utilities=`echo "xargs find mv sed awk tr cp grep rg ps kill head tail tar jq git git-status git-rebase git-commit git-worktree docker docker-compose chmod chown" | tr ' ' '\n'`

selected=`printf "$languages\n$utilities" | fzf`
read -p "Enter Query: " query

if printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi
