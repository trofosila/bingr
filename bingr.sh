#!/usr/bin/env bash

readonly SAVE_PATH="$HOME/Pictures/bingr"
readonly BING="https://www.bing.com"
readonly URL="$BING/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"

mkdir -p "${SAVE_PATH}"

IMG_URL=$(curl --silent $URL | \
    grep -Eo "\"url\":\".*?\"" |\
    rev | cut -c 2- | rev |\
    cut -c 8-) #select, cut ending ", cut trailing "url":"

IMG_NAME="${IMG_URL##*/}" #select everything after last occurence of /

if [ ! -f "$SAVE_PATH/$IMG_NAME" ]; then
    echo "Saving $IMG_NAME..."
    curl -s -Lo "$SAVE_PATH/$IMG_NAME" "$BING$IMG_URL"
else
    echo "$IMG_NAME already exists. Skipping..."
fi