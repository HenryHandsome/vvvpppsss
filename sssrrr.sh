#!/usr/bin/expect

spawn ./shadowsocks-all.sh
set timeout 300
expect "*Default Shadowsocks-Python):" {send "2"}
expect "*teddysun.com):" {send "zxh"}
expect "*Default port:*" {send "12345"}
expect "*aes-256-cfb):" {send "\n"}
expect "*(Default: origin):" {send "\n"}
expect "*Default: plain):" {send "\n"}
expect "*cancel" {send "\n"}
expect eof
