# Bing wallpaper for macOS

## Instalation
```bash
cd ~ # move to the home folder
mkdir -p Scripts # create a Scripts folder if it doesn't already exist
git clone https://github.com/trofosila/bingr.git # clone the project
cd bingr
```

## Usage
Run `./bingr.sh` to download *Bing image of the day* to `~/Pictures/bingr/`

## Run the script automatically everyday
- copy `com.zeplia.bingr.plist.template` to `com.zeplia.bingr.plist`
- edit `com.zeplia.bingr.plist` and replace USERNAME with your username
- copy `com.zeplia.bingr.plist` to `~/Library/LaunchAgents`
- run the terminal command `launchctl load ~/Library/LaunchAgents/com.zeplia.bingr.plist`

## Uninstall
