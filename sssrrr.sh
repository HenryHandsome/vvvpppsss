#!/usr/bin/expect

spawn ./shadowsocks-all.sh
set timeout 300
expect "*Default Shadowsocks-Python):" {send "2\n"}
expect "*teddysun.com):" {send "zxh\n"}
expect "*Default port:*" {send "12345\n"}
expect "*aes-256-cfb):" {send "\n"}
expect "*(Default: origin):" {send "\n"}
expect "*Default: plain):" {send "\n"}
expect "*cancel" {send "\n"}
expect eof
