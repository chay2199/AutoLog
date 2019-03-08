#!/bin/bash

if [[ -f server.txt ]]; then
        for server in $(cat server.txt); do
		echo 'Logging into Next System'
		echo 'Please enter the username:'
		read username
		sshpass -f passwords.txt ssh $username@$server '
		echo 'UID of the system logged in is: $UID''		 
        done
else
        echo 'No server.txt file'
fi
