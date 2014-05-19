COMPATIBLE_HOST = '(x86_64|i.86|arm|powerpc|aarch64|mips).*-linux'
FILESEXTRAPATHS_prepend_arm := "${THISDIR}/${BPN}:"
SRC_URI_append_arm = " file://whitelist_yocto_daisy_gcc.patch"
