#!/bin/bash
WS=$(
  i3-msg -t get_workspaces | jq | grep "name\": .*\",$" | sed "s/.*: \"\(.*\)\",.*$/\1/"
)

x_switch="python3 /home/kuba/.config/i3/i3-wk-switch/i3-wk-switch.py"
wsc="~/.dotfiles/iceberg/workspaces/get_current.sh"

num="$1"
index=0
i=0

echo "$num" >> ~/.dotfiles/polybar/log

ws=$(echo $WS | cut -d" " -f $num)

$x_switch $ws
# echo $ws
