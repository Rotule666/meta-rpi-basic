SUMMARY = "A basic image for running taplist.io"

include recipes-core/images/core-image-base.bb

COMPATIBLE_MACHINE = "^rpi$"

# Set root password to taplist
# Add a user taplist//taplist
inherit extrausers
EXTRA_USERS_PARAMS = "\
    useradd taplist; \
    usermod -P taplist root; \
    usermod -P taplist taplist; \
    usermod -a -G sudo taplist; \
"

# Include modules in rootfs
IMAGE_INSTALL += " \
    chromium-x11 \
    matchbox-session \
    nano \
    htop \
    ntp \
"

SPLASH = "psplash-raspberrypi"

IMAGE_FEATURES += "ssh-server-dropbear x11-base splash"

export IMAGE_BASENAME = "image-taplist"