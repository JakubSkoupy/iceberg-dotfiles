#!/bin/bash

workspace="/home/kuba/.config/rofi/workspace"
templates="/home/kuba/.config/iceberg/workspaces"
workspace_move="/home/kuba/.config/rofi/workspace_move"
x_switch="exec --no-startup-id python3 /home/kuba/.config/i3/i3-wk-switch/i3-wk-switch.py"

filename="$1"
cat $templates/ws_template.sh | sed "s/<WS>/$filename/g" > "$workspace/$filename"
chmod u+rxw $workspace/$filename

cat $templates/ws_m_template.sh | sed "s/<WS>/$filename/g" > "$workspace_move/$filename"
chmod u+rxw $workspace_move/$filename
