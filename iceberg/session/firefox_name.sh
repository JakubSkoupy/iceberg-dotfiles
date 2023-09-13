#!/bin/bash

name="$1"
i3-msg -t get_tree | grep -o "\"class\":\"firefox\"[^ ]*\"title\":\"\[$name][^\"]*\"" | sed "s/.*title\":\"\(.*\)\"/\1/"
