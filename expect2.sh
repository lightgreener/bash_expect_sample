#!/usr/bin/expect

set IP 192.168.153.133

set PASS owaspbwa

spawn ssh root@$IP

expect {
	"yes/no"{send "yes\r";exp_continue}
	"password:" {send "$PASS\r"}

}

expect "#"

send "ls -al"

expect eof:wq

