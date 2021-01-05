#! /bin/bash

# This is the install script. No need to run SlackBuild seperately.
# This script calls makes the SlackBuild and installs it fully.

chmod 755 v2ray.SlackBuild
. ./v2ray.SlackBuild
installpkg $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.${PKGTYPE:-tgz}

# Add rc.v2ray to startup at rc.local
v2rdaemon="
if [ -x /etc/rc.d/rc.v2ray ]; then
    /etc/rc.d/rc.v2ray
fi"

if [ -f /etc/rc.d/rc.local ]; then
    touch /etc/rc.d/rc.local
    chmod +x /etc/rc.d/rc.local
    echo "rc.local created"
fi

if [[ $(</etc/rc.d/rc.local) = *"$v2rdaemon"* ]]; then
    echo "rc.local already loads v2ray"
else
    cp /etc/rc.d/rc.local /etc/rc.d/rc.local-original
    chmod -x /etc/rc.d/rc.local-original
    printf '%s\n' "$v2rdaemon" >> /etc/rc.d/rc.local
    echo "v2ray loaded into rc.local, and rc.local-original created"
fi

# start v2ray now
echo "Manually starting v2ray now:"
/usr/local/bin/v2ray -config /etc/v2ray/config.json



