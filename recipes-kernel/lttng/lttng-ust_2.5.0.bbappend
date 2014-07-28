FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
SRC_URI_append = " file://yocto16-gcc-extern-weak-hidden-bug-workaround.patch"
