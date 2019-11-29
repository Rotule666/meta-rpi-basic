# rpi-yocto-build

## Installing the tools

## Setting up the build

Create project folder

`

mkdir -p ~/rpi/sources

cd ~/rpi/sources
`

Clone required repos

`

git clone -b zeus git://git.yoctoproject.org/poky

git clone -b zeus git://git.openembedded.org/meta-openembedded

git clone -b zeus git://git.yoctoproject.org/meta-raspberrypi

git clone git@github.com:Rotule666/meta-rpi-basic.git
`

init poky env

`

cd ~/rpi

source sources/poky/oe-init-build-env rpi-build
`

Copy example config

`

cp ~/rpi/sources/meta-rpi-basic/example-config/bblayers.conf conf/bblayers.conf

cp ~/rpi/sources/meta-rpi-basic/example-config/local.conf conf/local.conf
`

bitbake

`

bitbake rpi-basic-image
`

## References
https://hackaday.io/project/152729-8bitrobots-module/log/145981-setting-up-yocto-for-raspberry-pi-zero

https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

https://www.instructables.com/id/Building-GNULinux-Distribution-for-Raspberry-Pi-Us/
