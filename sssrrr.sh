#!/bin/sh
yum -y install expect
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh



#交互模式

/usr/bin/expect << eof
spawn ./shadowsocks-all.sh
set timeout 1000
expect "*Default Shadowsocks-Python):" {send "2\r"}
expect "*teddysun.com):" {send "zxh\r"}
expect "*Default port:*" {send "12345\r"}
expect "*aes-256-cfb):" {send "2\r"}
expect "*(Default: origin):" {send "1\r"}
expect "*Default: plain):" {send "1\r"}
expect "*cancel" {send "y\r"}
expect eof
