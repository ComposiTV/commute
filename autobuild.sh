#!/bin/sh
git pull
cd ../bauh
if git pull | grep -q 'Already up to date.'; then
echo bauh: no updates
else
rm bauh-*.pkg.tar.zst ../commute/mkosi.packages/bauh-*.pkg.tar.zst
makepkg -s --noconfirm
rm bauh-debug-*.pkg.tar.zst
cp bauh-*.pkg.tar.zst ../commute/mkosi.packages/
fi
cd ../wvkbd
if git pull | grep -q 'Already up to date.'; then
echo wvkbd: no updates
else
rm wvkbd-*.pkg.tar.zst ../commute/mkosi.packages/wvkbd-*.pkg.tar.zst
makepkg -s --noconfirm
rm wvkbd-debug-*.pkg.tar.zst
cp wvkbd-*.pkg.tar.zst ../commute/mkosi.packages/
fi
cd ../waterfox-bin
if git pull | grep -q 'Already up to date.'; then
echo waterfox-bin: no updates
else
rm waterfox-bin-*.pkg.tar.zst ../commute/mkosi.packages/waterfox-bin-*.pkg.tar.zst
makepkg -s --noconfirm
rm waterfox-bin-debug-*.pkg.tar.zst
cp waterfox-bin-*.pkg.tar.zst ../commute/mkosi.packages/
fi
cd ../commute
rm commute_*
mkosi
sudo find /srv/http/* -ctime +3 -delete
sudo cp commute_*.root*.*.raw /srv/http/
sudo cp commute_*.efi /srv/http/
cd /srv/http
sha256sum -b * | sudo tee SHA256SUMS
