#!/bin/bash

scripts="/home/kuba/.config/rofi/workspace_move"
window=$(xdotool getwindowfocus)

selected_script=$(find "$scripts" -type f -executable \
  | rev | cut -d'/' -f1 | rev \
  | rofi -dmenu -i -p "Move to workspace ")

if [[ -n "$selected_script" ]]; then
  "$scripts/$selected_script $window"
fi

read script arg <<< "$selected_script"

if [[ -n "$script" ]]; then
  "$scripts/$script" "$window $arg"
fi
