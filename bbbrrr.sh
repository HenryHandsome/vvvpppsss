#!/bin/sh
yum -y install expect
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh

#交互模式

/usr/bin/expect << eof
spawn ./bbr.sh
set timeout 1000
expect "*cancel" {send "y\r"}
expect "*y/n*" {send "y\r"}
expect eof
