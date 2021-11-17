#!/bin/bash

# Combines several split polybar config files into one
# so you can have different configs for e.g.
# desktops and laptops, but with common blocks

# To activate a variant, just "touch variant"
# in ~/.config/polybar/

cd "$HOME/.config/polybar/"

files=""

parts=( "colors" "bar" "modules" "other" )
variants=( "common" "desktop" "laptop" )

for part in ${parts[@]}; do
    for variant in ${variants[@]}; do
        if [ -f "modules/${variant}" -a -f "modules/${part}${variant}" ]; then
            files+="modules/${part}${variant} "
        fi
    done
done

cat $files > "config"
