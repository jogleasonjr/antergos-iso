rm -rf /var/tmp/antergos
rm -rf /start
rm -rf /out

sudo make install
cp -r /usr/share/antergos-iso/configs/antergos /var/tmp

git clone https://github.com/antergos/antergos-gfxboot /var/tmp/antergos/antergos-gfxboot

sudo mkdir /out

sudo ln -s /var/tmp/antergos /start

wget --content-disposition -P /start https://www.archlinux.org/packages/community/any/opendesktop-fonts/download

cd /var/tmp/antergos

sudo ./build.sh build dual