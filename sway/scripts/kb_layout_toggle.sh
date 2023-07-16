#!/bin/bash

listen-focus-changes() {
    property="$1"
    swaymsg -mt subscribe '["window"]' | jq --unbuffered -r "try select(.change == \"focus\").container.$property"
}

qwerty_windows=""

while read xwayland_class ; do
    if  [[ "${xwayland_class}" != "null" ]]; then
        echo $qwerty_windows | rg -w -q $xwayland_class

        if [[ $? -eq 1 ]]; then
            swaymsg input type:keyboard xkb_variant colemak
        elif [[ "${xwayland_class}" == *"Minecraft"* ]]; then
            swaymsg input type:keyboard xkb_variant colemak
        else
            swaymsg input type:keyboard xkb_variant intl
        fi
    else
        swaymsg input type:keyboard xkb_variant colemak
    fi
done < <(listen-focus-changes "window_properties.instance")
