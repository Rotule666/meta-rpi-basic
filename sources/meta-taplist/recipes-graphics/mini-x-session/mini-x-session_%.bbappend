 
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://session \
            file://.xinit.rc "

do_install_append() {
    install -d ${D}/${ROOT_HOME}/
    install -d ${D}/${sysconfdir}/mini_x/session.d
	install -m 0755 ${WORKDIR}/session ${D}/${sysconfdir}/mini_x/session.d/
    install -m 0755 ${WORKDIR}/.xinit.rc ${D}/${ROOT_HOME}/
}

FILES_${PN} += "${sysconfdir}/mini_x/session.d/session \
                ${ROOT_HOME}/.xinit.rc"
