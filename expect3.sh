#!/usr/bin/expect

# run on Centos 7
# must use command: expect -f expect3.sh
#


set USER root

#set IP 192.168.153.133
set IP [ lindex  $argv 0 ]

#set PASS owaspbwa
set PASS [ lindex $argv 1 ]

spawn ssh $USER@$IP

expect {
        "yes/no" { send "yes\r";exp_continue }
	        "password:" { send "$PASS\r" }

	}

expect "#"
send "mkdir dir{11..15}\r"
send "date\r"


#interact
expect eof
~                                                                                                                        
-- INSERT --

