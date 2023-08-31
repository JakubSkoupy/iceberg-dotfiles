#!/bin/bash
DELAY="3"
PROTECTED_WORKSPACES="10"
scripts="/home/kuba/.dotfiles/rofi/workspace"
workspaces="/home/kuba/.dotfiles/iceberg/workspaces/"

selected_script=$(find "$scripts" -type f -executable | rev | cut -d'/' -f1 | rev | rofi -dmenu -i -p "Workspace:")

# NO ARGUMENTS
if [[ -n "$selected_script" ]]; then
  "$scripts/$selected_script"
fi

# ARGUMENT PARSING
read ws arg <<< "$selected_script"

# NEW WORKSPACE
if [[ $arg == "n" ]]; then
  echo "$ws" >> "$workspaces/workspaces"
  "$workspaces/export_ws.sh"

  chmod u+x "$scripts/$ws"
  chmod u+x "/home/kuba/.config/rofi/workspace_move/$ws"
  "$scripts/$ws"
fi

if [[ $arg == "ns" ]]; then
  echo "$ws" >> "$workspaces/workspaces"
  "$workspaces/export_ws.sh"

  chmod u+x "$scripts/$ws"
  chmod u+x "/home/kuba/.config/rofi/workspace_move/$ws"
fi

#DELETE WORKSPACE
if [[ $arg == "d" ]]; then
  sed -i "s/$ws//g" $workspaces/workspaces

  rm -f "$scripts/$ws"
fi
