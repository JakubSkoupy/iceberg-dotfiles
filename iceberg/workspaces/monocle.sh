#!/bin/bash
WINDOW=$($HOME/.dotfiles/iceberg/workspaces/get_window.sh id)
NAME=$($HOME/.dotfiles/iceberg/workspaces/get_window.sh window_properties.instance)
# NAME=$(xdotool getactivewindow getwindowname)
WORKSPACE=$($HOME/.dotfiles/iceberg/workspaces/get_current.sh)
MINIMIZED_DATA="$HOME/.dotfiles/iceberg/workspaces/minimized"
LOG="$HOME/.dotfiles/iceberg/workspaces/log"

echo "$WORKSPACE MONOCLE " >> "$HOME/.dotfiles/iceberg/workspaces/log"
