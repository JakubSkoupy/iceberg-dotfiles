#!/bin/bash

DATA="$HOME/.dotfiles/iceberg/workspaces/minimized"
WORKSPACE=$($HOME/.dotfiles/polybar/scripts/minimize/get_workspace.sh)

output="    "
num=1

while IFS= read -r line; do
  read WS ID NAME EX <<< "$line"

  if [[ $WS == $WORKSPACE ]]; then

    output+="$NAME[$num] "
    ((num++))
  fi
done < "$DATA"

echo $output
