#!/bin/bash

input="workspaces"
workspace="/home/kuba/.dotfiles/rofi/workspace"
workspace_move="/home/kuba/.dotfiles/rofi/workspace_move"
x_switch="exec --no-startup-id python3 /home/kuba/.dotfiles/i3/i3-wk-switch/i3-wk-switch.py"

lines="$(cat $input)"

for l in $lines; do
  filename="${l}"
  content_w="i3-msg \"$x_switch ${l}\""
  content_m="i3-msg \"move container to workspace ${l}\""

  echo "#!/bin/bash" > "$workspace/$filename"
  echo "#!/bin/bash" > "$workspace_move/$filename"

  echo "$content_w" >> "$workspace/$filename"
  echo "$content_m" >> "$workspace_move/$filename"
done
