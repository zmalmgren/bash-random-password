#!/bin/bash
# generates a random string, the first and only argument determines the length. Max length of 249 characters.
set -e

if [ $1 -lt 250 ]; then
#checks first argument to make sure its less than 250

	#ASSHAT=$(dd if=/dev/urandom bs=1k count=1 status=none | strings -n 1 | tr -d [:cntrl:] | tr -d ' ' )
	#creates a variable called asshat. 1K of random data is piped to strings, which removes all the invalid characters. Then tr removes any newlines or spaces. I used pipes to avoid creating any intermediate files.
	# zmalmgren: 	The script works above. I am simply being excessive. There is a non-zero chance (though infinitesimally small)
	#		that 1k of random data will not have enough printable characters to satisfy the command. It will then return a
	#		string that is smaller than requested. I suggest the following:
	< /dev/urandom tr -cd "[:graph:]" | head -c $1; echo
	# zmalmgren:	This pulls from urandom until the argument length is met. zero chance of a smaller than intended string
	#		being returned.
	
	#echo ${ASSHAT:0:$1}
	#echos the requested number of characters
	# zmalmgren:	Not really needed any more. Line 13 is returning the string.

	#ASSHAT=0
	#zeros the variable cuz we're done with it
	# zmalmgren:	Not really needed as it was no longer defined / used in line 8.

	exit 0
fi

echo "ERROR: You don't need a password that long. 249 chars max"
#displays an error message if a value of 250+ is passed
# zmalmgren:	Sorry mate... I am being SUPER pithy
exit 1
