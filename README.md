# rpi-yocto-build

this is a yocto build to make a minimal image to use your raspberrypi with taplist.io.
This is also a good start for me to learn yocto.

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

`sudo git submodule add -b zeus git://git.yoctoproject.org/poky`

`sudo git submodule add -b zeus git://git.openembedded.org/meta-openembedded`

`sudo git submodule add -b zeus git://git.yoctoproject.org/meta-raspberrypi`

`sudo git submodule add -b zeus git://git.openembedded.org/openembedded-core`

`sudo git submodule add https://github.com/OSSystems/meta-browser.git`

`sudo git submodule add git://github.com/kraj/meta-clang`


### Build the image
to init poky build env

`cd ~/rpi-taplist`

`source sources/poky/oe-init-build-env rpi-build`


to build the image


`bitbake core-image-base`

`#bitbake core-image-taplist`


### Image location
Once built, the image will be in
~/rpi-taplist/rpi-build/tmp/deploy/images/raspberrypi2/

### Flash the image using bmaptool

Make sure to check which disk to write to, I use

`lsblk`

use bmaptool, Make sure to change the right device here

`cd ~/rpi-taplist/rpi-build/tmp/deploy/images/raspberrypi2`

`sudo bmaptool copy core-image-base-raspberrypi2.rpi-sdimg /dev/sdc`

## References
https://hackaday.io/project/152729-8bitrobots-module/log/145981-setting-up-yocto-for-raspberry-pi-zero

https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

https://www.instructables.com/id/Building-GNULinux-Distribution-for-Raspberry-Pi-Us/

https://blog.emumba.com/how-to-write-a-custom-yocto-application-layer-for-raspberrypi-bcd03f06ed68
