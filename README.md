# wol-nrw-pegel-scraper
Scraper tool that pulls current water level data for Wasserverband Obere Lippe

## Install
ln -s $PWD/wol-nrw-fetch-levels.sh ~/.local/bin/
ln -s $PWD/wol-nrw-fetch-levels.service ~/.config/systemd/user/
ln -s $PWD/wol-nrw-fetch-levels.timer ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now wol-nrw-fetch-levels.timer

