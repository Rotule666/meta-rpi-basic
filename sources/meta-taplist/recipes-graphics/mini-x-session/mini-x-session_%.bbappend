 
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://session"

do_install_append() {
    install -d ${D}/${sysconfdir}/mini_x/
	install -m 0755 ${WORKDIR}/session ${D}/${sysconfdir}/mini_x/
}

FILES_${PN} += "${sysconfdir}/mini_x/session"
