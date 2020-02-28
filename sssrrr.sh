#!/usr/bin/expect

spawn ./shadowsocks-all.sh
set timeout 300
expect "*Default Shadowsocks-Python):" {send "2\r"}
expect "*teddysun.com):" {send "zxh\r"}
expect "*Default port:*" {send "12345\r"}
expect "*aes-256-cfb):" {send "2\r"}
expect "*(Default: origin):" {send "1\r"}
expect "*Default: plain):" {send "1\r"}
expect "*cancel" {send "y\r"}
expect "*Enjoy it!*" {send "exit\r"}
expect eof
