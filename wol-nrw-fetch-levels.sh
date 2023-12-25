#!/bin/bash -e

date=$(date --iso-8601=minutes)
folder="$HOME/.local/share/wol-nrw-scraper/$(echo "$date" | awk -FT '{print $1}')"
mkdir -p "$folder"
(echo '{'; curl --silent https://www.wol-nrw.de/aktuelle-messwerte/ | sed -n '/var data/,/;/p'|tail -n+2 | head -n-1; echo '}') | jq > "$folder/$date.json"
