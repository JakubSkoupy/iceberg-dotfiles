#!/bin/bash

window=$1

echo $1
name=$(xdotool getwindowname $1)
i3-msg "[ title=\"$name\" ] move to workspace <WS>"

if [ $2 == m ]; then
  i3-msg "exec --no-startup-id python3 /home/kuba/.dotfiles/i3/i3-wk-switch/i3-wk-switch.py <WS>"
fi
