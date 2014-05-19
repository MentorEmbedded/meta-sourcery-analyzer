# Add LTTng 2.4 base address statedump patch to make deadlocks less likely with forks-without-exec
FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
SRC_URI_append = " file://0001-Fix-Make-deadlocks-with-baddr-statedump-unlikely.patch"
