# rpi-yocto-build

this is a yocto build to make a minimal image to use your raspberrypi with taplist.io.
This is also a good start for me to learn yocto.

it basically simply start chromium in kiosk mode and go to taplist.io

you can see the way we start chromium in /usr/bin/matchbox-session

## Installing the tools

You will need the following packages

* build-essential
* chrpath
* diffstat
* gawk
* libncurses5-dev
* texinfo

## Setting up the build

Clone the project to your home directory ~

`cd ~`

`git clone https://github.com/Rotule666/rpi-taplist.git`

### submodules
The project will include the required submodules (this is provided for information, no need to execute the following lines)

`cd ~/rpi-taplist/sources`

`git submodule init`

`git submodule update`

### Build the image

Chose your device in rpi-build/conf/local.conf

to init poky build env

`cd ~/rpi-taplist`

`source sources/poky/oe-init-build-env rpi-build`

to build the image

`bitbake image-taplist`

go make the grocery, it takes forever.

### Image location
Once built, the image will be in
~/rpi-taplist/rpi-build/tmp/deploy/images/raspberrypi2/

### Flash the image using bmaptool

If you are using wsl, you need to mount the drive, for this use powershell

`wmic diskdrive list brief`

`wsl --mount <DiskPath> --bare`

Make sure to check which disk to write to, I use

`lsblk`

use bmaptool, Make sure to change the right device here

`cd ~/rpi-taplist/rpi-build/tmp/deploy/images/raspberrypi2`

`sudo bmaptool copy image-taplist-raspberrypi2.rpi-sdimg /dev/sdc`

## tips

### SSH

to ssh to your new builded yocto system, use

`ssh root@taplist.local`

use the password set in image-taplist.bb (default from the repo is taplist)


## References
https://hackaday.io/project/152729-8bitrobots-module/log/145981-setting-up-yocto-for-raspberry-pi-zero

https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

https://www.instructables.com/id/Building-GNULinux-Distribution-for-Raspberry-Pi-Us/

https://blog.emumba.com/how-to-write-a-custom-yocto-application-layer-for-raspberrypi-bcd03f06ed68

https://www.foobarflies.io/starting-with-yocto/
