#!/bin/bash -e

date=$(date --iso-8601=minutes)
folder=$(echo "$date" | awk -FT '{print $1}')
mkdir "$folder"
(echo '{'; curl https://www.wol-nrw.de/aktuelle-messwerte/ | sed -n '/var data/,/;/p'|tail -n+2 | head -n-1; echo '}') | jq > "$folder/$date.json"
