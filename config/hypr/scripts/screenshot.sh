#!/bin/sh

grim -g "$(slurp -o -r -c '##ff0000ff')" -t ppm - | satty --filename - --fullscreen --output-filename ~/Pictures/screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png