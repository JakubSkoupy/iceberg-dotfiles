#!/bin/bash
i3-msg -t get_workspaces \
  | jq '.[] | select(.visible==true).name' \
  | cut -d"\"" -f2
