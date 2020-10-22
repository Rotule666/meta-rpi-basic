 
# see https://github.com/openembedded/openembedded-core/blob/master/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb

SECTION = "x11"
RDEPENDS_${PN} = "formfactor matchbox-theme-sato matchbox-panel-2 matchbox-desktop matchbox-session gconf"
PR = "r0"

# This package is architecture specific because the session script is modified
# based on the machine architecture.
PACKAGE_ARCH = "${MACHINE_ARCH}"

inherit features_check

# The matchbox-theme-sato requires x11 in DISTRO_FEATURES
REQUIRED_DISTRO_FEATURES = "x11"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://session"

do_install_append() {
    install -d ${D}/${sysconfdir}/matchbox
    chmod +x ${D}/${sysconfdir}/matchbox/session
}

FILES_${PN} += "${sysconfdir}/matchbox/session"

PACKAGE_WRITE_DEPS += "gconf-native"