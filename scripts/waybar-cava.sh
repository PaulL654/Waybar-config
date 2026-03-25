#!/bin/bash
# Bridge for cava to waybar with 14-level mapping
cava -p ~/.config/waybar/scripts/cava.conf | while read -r line; do
    # This removes the error-causing semicolons and maps the density
    echo "$line" | sed 's/0/ /g; s/1/ /g; s/2/▂/g; s/3/▃/g; s/4/▄/g; s/5/▅/g; s/6/▆/g; s/7/▇/g; s/8/█/g; s/9/█/g; s/10/█/g; s/11/█/g; s/12/█/g; s/13/█/g; s/14/█/g; s/;//g'
done