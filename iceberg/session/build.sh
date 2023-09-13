#!/bin/bash

ws_current=$(/home/kuba/.dotfiles/iceberg/workspaces/get_current.sh)

# kitty --name dotfiles -e nvim ~/.dotfiles &
# sleep 1
# i3-msg [instance="dotfiles"] move to workspace dotfiles

i3-msg '[title="\[info\]"] move to workspace info'

i3-msg '[title="\[docs\]"] move to workspace docs'

i3-msg '[title="\[main\]"] move to workspace bro'

i3-msg '[title="\[is\]"] move to workspace is'
