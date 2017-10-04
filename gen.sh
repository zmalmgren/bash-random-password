#!/bin/bash
# generates a random string, the first and only arguement determines the length. Max length of 249 characters.

if [ $1 -lt 250 ]; then
#checks first arguement to make sure its less than 250

	ASSHAT=$(dd if=/dev/urandom bs=1k count=1 status=none | strings -n 1 | tr -d [:cntrl:] | tr -d ' ' )
	#creates a variable called asshat. 1K of random data is piped to strings, which removes all the invalid characters. Then tr removes any newlines or spaces. I used pipes to avoid creating any intermediate files.

	echo ${ASSHAT:0:$1}
	#echos the requested number of characters

	ASSHAT=0
	#zeros the variable cuz we're done with it

	exit 0
fi

echo "ERROR: You don't need a password that long. 249 chars max"
#displays an error message if a value of 250+ is passed
