 
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://session"

do_install_append() {
    install -d ${D}/${ROOT_HOME}/
    install -d ${D}/${sysconfdir}/mini_x/session.d
	install -m 0755 ${WORKDIR}/session ${D}/${sysconfdir}/mini_x/session.d/
}

FILES_${PN} += "${sysconfdir}/mini_x/session.d/session"
