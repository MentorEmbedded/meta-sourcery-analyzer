Notes on using the meta-sourcery-analyzer layer:
================================================

Usage & Instructions
--------------------

This repository contains an add-on layer for `Yocto Project 1.6`
https://www.yoctoproject.org/download/yocto-project-16 (Codename Daisy) which
provides LTTng specific fixes to improve the out-of-the-box tracing experience
with `Sourcery Analyzer` included in `Codebench 2014.05`
See http://go.mentor.com/codebench and http://go.mentor.com/sourceryanalyzer

Use this layer by simply adding it to your `BBLAYERS` in `conf/bblayers.conf`
before you start building with bitbake. See:
http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#var-BBLAYERS

Additionally you need to modify your `conf/local.conf` to make sure you have
`tools-profile` `ssh-server-openssh` and `eclipse-debug` added to variable
`EXTRA_IMAGE_FEATURES`.

To following modifications are provided on top of Yocto 1.6:

- Build babeltrace 1.2.1 (instead of 1.1.1), liburcu 0.8.4 (instead of 0.8.1)
- Enable lttng kernel tracing for ARM (remove blacklisting of lttng-modules)
- Apply http://lists.lttng.org/pipermail/lttng-dev/2014-March/022631.html
  to mitigate the fork-without-exec deadlock issue of LTTng 2.4
- Enable busybox setsid and getopt (+ long options support) applets
- Enable -n for busybox head applet
- Workaround Yocto 1.6 GCC bug
  (handling of externals with `__attribute__((weak, visibility("hidden")))`)

Maintainers
-----------

Patches can be sent via github pull request. Following people are maintainers
of this layer: `Paul_Woegerer@mentor.com` and `Nathan_Lynch@mentor.com`

General Information
-------------------

- Browse: https://github.com/MentorEmbedded/meta-sourcery-analyzer
- Clone: https://github.com/MentorEmbedded/meta-sourcery-analyzer.git
