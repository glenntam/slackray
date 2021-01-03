V2ray is a platform for building proxies to bypass network restrictions.

== Features ==

Multiple proxy support

V2Ray supports Socks, HTTP, Shadowsocks and VMess protocol.

    One V2Ray process can use different protocols on different ports at the same time;
    By combining different inbound and outbound proxies, one can change traffic format dynamically.

Multiple transport protocols

All proxies above can be send/recieve over TLS, TCL, mKCP and more transport protocols.
Flexible routing

V2Ray has an internal router, which can be configured to proxy traffic, or send directly, or even block them.
Multiple platforms

V2Ray runs on many platforms; This Slackbuild supports Linux 2.6.23 and later
(x86 / amd64 / arm / arm64 / mips64 / mips).

== Usage ==

You have to prepare your own configuration file (in which contains the information of
your v2ray server), and then put it on:

- Desktop, if you'd like to run it from the xfce menu; or  
- /etc/v2ray/, if you'd like to start it by execute /etc/rc.d/rc.v2ray.
  (handful for making it autostart at startup; you might want to add this
command to your rc.local )
- After all, you can just issue: v2ray -config <path/to/your-config> , no
  matter where your file locates.
