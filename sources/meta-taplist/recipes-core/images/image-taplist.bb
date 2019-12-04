SUMMARY = "A basic image for running taplist.io"
HOMEPAGE = ""
LICENSE = "MIT"

include recipes-core/images/core-image-base.bb

COMPATIBLE_MACHINE = "^rpi$"

# Change root password to taplist
INHERIT += "extrausers"

# Set root password to taplist
# Add a user taplist//taplist
EXTRA_USERS_PARAMS = "	usermod -P taplist root; \
						useradd taplist; \
						usermod  -p 'taplist' taplist; \
						usermod  -a -G sudo taplist; \
						"

# Include modules in rootfs
IMAGE_INSTALL += " \
	chromium-x11 \
    mini-x-session \
	"

#SPLASH = "psplash-raspberrypi"

#IMAGE_FEATURES += "ssh-server-dropbear x11-base splash"
IMAGE_FEATURES += "ssh-server-dropbear x11-base"

export IMAGE_BASENAME = "image-taplist"