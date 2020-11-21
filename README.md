# Bing wallpaper for macOS

## Usage
```bash
cd ~ # move to the home folder
mkdir -p Scripts # create a Scripts folder if it doesn't already exist
git clone https://github.com/trofosila/bingr.git # clone the project
cd bingr
```
Run `./bingr.sh` to download **Bing image of the day** to `~/Pictures/bingr/`

## Run the script automatically everyday
Copy **com.zeplia.bingr.plist** to **$HOME/Library/LaunchAgents** and run the terminal command `launchctl load $HOME/Library/LaunchAgents/com.zeplia.bingr.plist`