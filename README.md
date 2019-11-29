# rpi-yocto-build

## Installing the tools

## Setting up the build

mkdir -p ~/rpi/sources
cd ~/rpi/sources
git clone -b zeus git://git.yoctoproject.org/poky
git clone -b zeus git://git.openembedded.org/meta-openembedded
git clone -b zeus git://git.yoctoproject.org/meta-raspberrypi



cd ~/rpi
source sources/poky/oe-init-build-env rpi-build



## References
https://hackaday.io/project/152729-8bitrobots-module/log/145981-setting-up-yocto-for-raspberry-pi-zero

https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

https://www.instructables.com/id/Building-GNULinux-Distribution-for-Raspberry-Pi-Us/
