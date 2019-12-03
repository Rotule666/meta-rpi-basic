SUMMARY = "A basic image for running taplist.io"
HOMEPAGE = ""
LICENSE = "MIT"

include recipes-core/images/core-image-base.bb

COMPATIBLE_MACHINE = "^rpi$"


# Include modules in rootfs
#IMAGE_INSTALL += " \
#	kernel-modules \
#	"

#SPLASH = "psplash-raspberrypi"

#IMAGE_FEATURES += "ssh-server-dropbear splash"

IMAGE_FEATURES += "ssh-server-dropbear"

export IMAGE_BASENAME = "image-taplist"