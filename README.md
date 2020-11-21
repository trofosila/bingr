# Bing wallpaper for macOS

## Getting the script
```bash
cd ~ # move to the home folder
mkdir -p Scripts # create a Scripts folder if it doesn't already exist
git clone https://github.com/trofosila/bingr.git # clone the project
cd bingr
```

## Usage
Running `./bingr.sh` will download *Bing image of the day* to `~/Pictures/bingr/`

## Run script automatically every day
- copy `com.zeplia.bingr.plist.template` to `com.zeplia.bingr.plist`
- edit `com.zeplia.bingr.plist` and replace USERNAME with your username
- copy `com.zeplia.bingr.plist` to `~/Library/LaunchAgents`
- run the terminal command `launchctl load ~/Library/LaunchAgents/com.zeplia.bingr.plist`

Alternatively, use this one-liner script
```
sed -i .bak "s/USERNAME/$USER/g" com.zeplia.bingr.plist.template && mv com.zeplia.bingr.plist.template ~/Library/LaunchAgents/com.zeplia.bingr.plist && mv com.zeplia.bingr.plist.template.bak com.zeplia.bingr.plist.template
```

## Uninstall
