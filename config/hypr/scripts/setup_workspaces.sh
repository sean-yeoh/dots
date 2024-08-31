#!/bin/sh

IFS=' ' read -r -a MONITOR1_WORKSPACES_ARR <<< "$MONITOR1_WORKSPACES"
IFS=' ' read -r -a MONITOR2_WORKSPACES_ARR <<< "$MONITOR2_WORKSPACES"

# Skip first workspace since we've already initialized the workspace in workspaces.conf
for i in "${MONITOR1_WORKSPACES_ARR[@]:1}"
do
  hyprctl keyword workspace $i,monitor:desc:$MONITOR1_DESC
done

# Skip first workspace since we've already initialized the workspace in workspaces.conf
for i in "${MONITOR2_WORKSPACES_ARR[@]:1}"
do
  hyprctl keyword workspace $i,monitor:desc:$MONITOR2_DESC
done
