#!/bin/sh
yum -y install expect
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh



#交互模式

/usr/bin/expect << eof
spawn ./shadowsocks-all.sh
set timeout 300
expect "*Default Shadowsocks-Python):" {send "2\r"}
expect "*teddysun.com):" {send "zxh\r"}
expect "*Default port:*" {send "12345\r"}
expect "*aes-256-cfb):" {send "2\r"}
expect "*(Default: origin):" {send "1\r"}
expect "*Default: plain):" {send "1\r"}
expect "*cancel" {send "y\r"}
interact
eof

/usr/bin/expect << eof
spawn ./bbr.sh
set timeout 1000
expect "*cancel" {send "y"}
expect "*y/n*" {send "y"}
expect eof
