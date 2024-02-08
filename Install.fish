#!/usr/bin/env fish

for f in $(/bin/ls XDGConfigs)
	cp -vr ./XDGConfigs/$f $HOME/.config/
end
