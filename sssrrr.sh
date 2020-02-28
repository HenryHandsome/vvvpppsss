#!/usr/bin/expect

spawn ./shadowsocks-all.sh
set timeout 300
expect "*Default Shadowsocks-Python):" {send "2\r"}
expect "*teddysun.com):" {send "zxh\r"}
expect "*Default port:*" {send "12345\r"}
expect "*aes-256-cfb):" {send "\r"}
expect "*(Default: origin):" {send "\r"}
expect "*Default: plain):" {send "\r"}
expect "*cancel" {send "\r"}
interact
