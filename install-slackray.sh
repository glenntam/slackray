#! /bin/bash

# This is the install script. No need to run SlackBuild seperately.
# This script calls makes the SlackBuild and installs it fully.

chmod 755 v2ray.SlackBuild
. ./v2ray.SlackBuild
installpkg $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.${PKGTYPE:-tgz}

v2rdaemon="
if [ -x /etc/rc.d/rc.v2ray ]; then
    /etc/rc.d/rc.v2ray
fi
"
# add to daemon to rc.local startup if it doesn't exist
if [ -f /etc/rc.d/rc.local ]; then
    if grep -Fx "$v2rdaemon" /etc/rc.d/rc.local; then
        echo "v2ray deamon at boot already exists in rc.local"
    else
        printf '%s\n' "$v2rdaemon" >> /etc/rc.d/rc.local
        echo "v2ray boot daemon added to rc.local"
    fi
fi
