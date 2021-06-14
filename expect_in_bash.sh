#!/bin/env bash

#
#
#


#for i in `wc -l new_userfile.txt`
#do 

#echo $i


#done

# read 

while read ip pass
do
	/usr/bin/expect <<-END &>/dev/null 
	spawn ssh root@$ip
	expect {
		"yes/no" {send "yes\r"; exp_continue}
		"password: " {send "$pass\r}
		}
	expect "#" {send "touch file.txt\r"}
	expect eof
	END
	echo " all done"

done < ip.txt


