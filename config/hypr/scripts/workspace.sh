#!/bin/sh

IFS=' ' read -r -a MONITOR1_WORKSPACES_ARR <<< "$MONITOR1_WORKSPACES"
IFS=' ' read -r -a MONITOR2_WORKSPACES_ARR <<< "$MONITOR2_WORKSPACES"

FOCUSED_MONITOR=$(hyprctl -j monitors | jq '.[] | select( .focused == true )')
MONITOR_DESC=$(echo $FOCUSED_MONITOR | jq .description)

if [[ "$MONITOR_DESC" == *"$MONITOR1_DESC"* ]]; then
  WORKSPACE_ID=${MONITOR1_WORKSPACES_ARR[($1 - 1)]}
  hyprctl dispatch workspace $WORKSPACE_ID
fi

if [[ "$MONITOR_DESC" == *"$MONITOR2_DESC"* ]]; then
  WORKSPACE_ID=${MONITOR2_WORKSPACES_ARR[($1 - 1)]}
  hyprctl dispatch workspace $WORKSPACE_ID
fi
