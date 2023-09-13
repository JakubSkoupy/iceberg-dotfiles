#!/bin/bash

WINDOW=$($HOME/.dotfiles/iceberg/workspaces/get_window.sh id)
NAME=$($HOME/.dotfiles/iceberg/workspaces/get_window.sh window_properties.instance)
# NAME=$(xdotool getactivewindow getwindowname)
WORKSPACE=$($HOME/.dotfiles/iceberg/workspaces/get_current.sh)
MINIMIZED_DATA="$HOME/.dotfiles/iceberg/workspaces/minimized"
LOG="$HOME/.dotfiles/iceberg/workspaces/log"

echo "$WORKSPACE $WINDOW $NAME" >> "$HOME/.dotfiles/iceberg/workspaces/log"

echo "$WORKSPACE $WINDOW $NAME" >> $MINIMIZED_DATA
i3-msg "[ con_id=\"$WINDOW\" ] move to workspace ." >> "$HOME/.dotfiles/iceberg/workspaces/log"
i3-msg "[ con_id=\"$WINDOW\" ] move to workspace HIDDEN" >> "$HOME/.dotfiles/iceberg/workspaces/log"
i3-msg "[ con_id=\"$WINDOW\" ] floating disable" >> "$HOME/.dotfiles/iceberg/workspaces/log"
