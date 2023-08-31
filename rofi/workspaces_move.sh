#!/bin/bash

scripts="/home/kuba/.config/rofi/workspace_move"
selected_script=$(find "$scripts" -type f -executable \
  | rev | cut -d'/' -f1 | rev \
  | rofi -dmenu -i -p "Move to workspace ")

if [[ -n "$selected_script" ]]; then
  "$scripts/$selected_script"
fi

read script arg <<< "$selected_script"

if [[ -n "$script" ]]; then
  "$scripts/$script" "$arg"
fi
