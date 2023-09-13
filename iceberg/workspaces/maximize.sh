#!/bin/bash

INDEX="$1"
DATA="$HOME/.dotfiles/iceberg/workspaces/minimized"
WORKSPACE=$($HOME/.dotfiles/polybar/scripts/minimize/get_workspace.sh)

num=1

echo $@ $WORKSPACE >> "$HOME/.dotfiles/iceberg/workspaces/log"

while IFS= read -r line; do
  read WS ID NAME EX <<< "$line"

  if [ $WS == $WORKSPACE ]; then
    if [[ $num -eq $INDEX ]]; then
      echo $ID $NAME
      i3-msg "[ con_id=\"$ID\" ] move to workspace $WORKSPACE" >> "$HOME/.dotfiles/iceberg/workspaces/log"
      i3-msg "[ con_id=\"$ID\" ] floating disable" >> "$HOME/.dotfiles/iceberg/workspaces/log"
      sed -i "/$ID/d" $DATA
      exit 0

    fi
    ((num++))
  fi
done < "$DATA"

echo FAIL >> "$HOME/.dotfiles/iceberg/workspaces/log"
