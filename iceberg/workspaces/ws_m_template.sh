#!/bin/bash

i3-msg "move container to workspace <WS>"
if [ $1 == m ]; then
  i3-msg "exec --no-startup-id python3 /home/kuba/.config/i3/i3-wk-switch/i3-wk-switch.py <WS>"
fi