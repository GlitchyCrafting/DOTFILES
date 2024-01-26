echo "Sync direction"
echo "1: Install"
echo "2: Fetch"

read sync_dir

if [[ sync_dir -eq 1 ]]; then
    for f in $(ls -a HomeConfigs); do
        rsync -v HomeConfigs/$f ~/$f
    done
    for f in $(ls HomeDirs); do
        rsync -v HomeDirs/$f ~/$f
    done
    for f in $(ls XDGConfigs); do
        rsync -v XDGConfigs/$f ~/.config/$f
    done
    echo "System Configs will need to be installed manually"
elif [[ sync_dir -eq 2 ]]; then
    for f in $(ls -a HomeConfigs); do
        rsync -v ~/$f HomeConfigs/$f
    done
    for f in $(ls HomeDirs); do
        rsync -v ~/$f HomeDirs/$f
    done
    for f in $(ls XDGConfigs); do
        rsync -v ~/.config/$f XDGConfigs/$f
    done
    for f in $(ls SysConfigs/etc); do
        rsync -v /etc/$f SysConfigs/etc/$f
    done
fi

echo "Sync complete"
