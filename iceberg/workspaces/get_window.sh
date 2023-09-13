#!/bin/bash

i3-msg -t get_tree | jq -r ".. | select(.focused?) | .$1"
