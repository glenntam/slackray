# SlackRay is a v2ray implementation that runs on Slackware Linux. 

## Features

### Multiple proxy support

SlackRay V2Ray supports Socks, HTTP, Shadowsocks and VMess protocol.

One V2Ray process can use different protocols on different ports at the same time;
By combining different inbound and outbound proxies, one can change traffic format dynamically.

### Multiple transport protocols

All proxies above can be send/recieve over TLS, TCL, mKCP and more transport protocols.
Flexible routing

V2Ray has an internal router, which can be configured to proxy traffic, or send directly, or even block them.
Multiple platforms

V2Ray runs on many platforms; This Slackbuild supports Linux 2.6.23 and later
(x86 / amd64 / arm / arm64 / mips64 / mips).

## Requirements
- SlackRay is made specifically for Slackware Linux. For Windows and Mac versions see here [instead](https://www.v2ray.com/en/welcome/install.html)
- SlackRay ***does not*** require SystemD
  
## Installation and Usage

1. You have to prepare your own configuration files. Full instructions are [here](https://www.v2ray.com/en/configuration/overview.html).

1. Run `install-slackray.sh`. SlackRay will install automatically and will be enabled at startup.

1. You can run SlackRay from your client machine from either the desktop or command line: 
- If you prefer to run from desktop, the `v2ray.desktop` file is included for your convenience. 
- If you prefer to run from command line, `/usr/local/bin/v2ray -config /path/to/myconfig.json &` 
