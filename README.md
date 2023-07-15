# SlackRay is a v2ray implementation that runs on Slackware Linux. 
A set of network tools that helps you to build your own computer network. It secures your network connections and protects your privacy.

## Features

### Multiple proxy support

Supports Socks, HTTP, Shadowsocks and VMess protocol.

Can manage different protocols on different ports at the same time.
By combining different inbound and outbound proxies, one can change traffic format dynamically.

### Multiple transport protocols

All proxies above can send/receive over TLS, TCL, mKCP and more transport protocols.
It has an internal router, which can be configured to proxy traffic, or send directly, or even block them.

## Requirements
- SlackRay is made specifically for Slackware Linux. For Windows and Mac versions see here [instead](https://www.v2ray.com/en/welcome/install.html)
- SlackRay ***does not*** require SystemD, so it can also be adapted for other SysV distributions.
  
## Installation and Usage

1. You have to prepare your own configuration files. Full instructions are [here](https://www.v2ray.com/en/configuration/overview.html).

1. Run `install-slackray.sh`. SlackRay will install automatically and will be enabled at startup.

1. You can run SlackRay from your client machine from either the desktop or command line: 
- If you prefer to run from desktop, the `v2ray.desktop` file is included for your convenience. 
- If you prefer to run from command line, `/usr/local/bin/v2ray -config /path/to/myconfig.json &` 
