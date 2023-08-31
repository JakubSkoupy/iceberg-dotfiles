#!/bin/bash

input="/home/kuba/.config/iceberg/workspaces/workspaces"
workspace="/home/kuba/.config/rofi/workspace"
workspace_move="/home/kuba/.config/rofi/workspace_move"
x_switch="exec --no-startup-id python3 /home/kuba/.config/i3/i3-wk-switch/i3-wk-switch.py"

lines="$(cat $input)"

for l in $lines; do
  filename="${l}"
  /home/kuba/.config/iceberg/workspaces/workspace_export.sh $filename
done
