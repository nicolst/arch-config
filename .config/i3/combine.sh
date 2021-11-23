#!/bin/bash

# Combines several split i3 config files into one
# so you can have different configs for e.g.
# desktops and laptops, but with common blocks

# To activate a variant, just "touch variant"
# in ~/.config/i3/

cd "$HOME/.config/i3/"

files=""

parts=( "style" "windows" "keybinds" "execs" )
variants=( "common" "desktop" "laptop" )

for part in ${parts[@]}; do
    for variant in ${variants[@]}; do
        if [ -f "modules/${variant}" -a -f "modules/${part}${variant}" ]; then
            files+="modules/${part}${variant} "
        fi
    done
done

cat $files > "config"
