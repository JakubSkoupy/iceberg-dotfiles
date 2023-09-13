#!/bin/bash

WS=$(
  i3-msg -t get_workspaces | jq | grep "name\": .*\",$" | sed "s/.*: \"\(.*\)\",.*$/\1/"
)

wsc="~/.dotfiles/iceberg/workspaces/get_current.sh"

num="$1"

echo "$num" >> ~/.dotfiles/polybar/log

ws=$(echo $WS | cut -d" " -f $num)

i3-msg move to workspace $ws
