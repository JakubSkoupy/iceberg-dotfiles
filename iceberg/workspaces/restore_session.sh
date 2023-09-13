#! /bin/bash

workspaces="/home/kuba/.dotfiles/iceberg/workspaces/workspaces"
ws_current=$(/home/kuba/.dotfiles/iceberg/workspaces/get_current.sh)

lines="$(cat $workspaces)"

for l in $lines; do
  i3-msg workspace $l
  i3-resurrect restore
done

i3-msg workspace $ws_current
