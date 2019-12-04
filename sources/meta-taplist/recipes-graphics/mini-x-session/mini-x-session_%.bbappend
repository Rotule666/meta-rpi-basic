 
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://session"

#RDEPENDS_${PN} = "sudo"

#do_install_append() {
#	install -m 0755 ${WORKDIR}/session ${D}/${sysconfdir}/mini_x/
#}