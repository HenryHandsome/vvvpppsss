#!/usr/bin/expect

spawn ./bbr.sh
set timeout 300
expect "*cancel" {send "y\r"}
expect "*y/n*" {send "y\r"}
expect eof
