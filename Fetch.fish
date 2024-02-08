#!/usr/bin/env fish

for f in $(/bin/ls XDGConfigs)
	cp -vr $HOME/.config/$f ./XDGConfigs/
end

for f in $(/bin/ls -a HomeConfigs)
	cp -vr $HOME/$f ./HomeConfigs/
end

for f in $(/bin/ls HomeDirs)
	cp -vr $HOME/$f ./HomeDirs/
end
