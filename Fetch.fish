#!/usr/bin/env fish

for f in $(/bin/ls XDGConfigs)
	cp -vr $HOME/.config/$f ./XDGConfigs/
end
