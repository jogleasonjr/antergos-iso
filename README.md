Modified version of archiso to build the Antergos ISO with official drivers and boot options for an NVIDIA GTX 1080.

# Dependencies ##

- antergos-gfxboot for a graphical boot (or isolinux/syslinux)

- arch-install-scripts

    `sudo pacman -S pkgfile`

    `pkgfile --update`

    `sudo pkgfile --update`

    `pkgfile pacstrap`

    `sudo pacman -S extra/arch-install-scripts`


- dosfstools
- libisoburn
- mkinitcpio-nfs-utils
- make
- openfonts (tgz file)
- patch
- squashfs-tools
- wget

# Build Instructions ##

## Option 1: Experimental build script

`sudo ./clean-and-build.sh`

## Option 2: Original build steps

### Configure

`sudo make install`

`cp -r /usr/share/antergos-iso/configs/antergos /var/tmp`

### Clone antergos-gfxboot 

`git clone https://github.com/antergos/antergos-gfxboot /var/tmp/antergos/antergos-gfxboot`

### Create destination folders

`sudo mkdir /out`

`sudo ln -s /var/tmp/antergos /start`

### Install fonts

`wget --content-disposition -P /start https://www.archlinux.org/packages/community/any/opendesktop-fonts/download`

### Build the iso
 
`cd /var/tmp/antergos`

`sudo ./build.sh build dual`
 
/start and /out are defaults. You can change it passing the desired directories as parameters in build.sh.

If you want to try to build the iso again, please remember to clean all generated files first: `sudo ./build.sh clean`
