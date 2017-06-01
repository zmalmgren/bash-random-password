# Bash script for generating a random string, for use as a password
Takes the desired length as the only arguement. Outputs letters, numbers and symbols (no spaces).

Example usage:

./gen.sh 20 #this will echo you out 20 random characters



## Disclaimer:
The source of randomness is /dev/urandom, which is good as far as I have read, but don't trust it with your life or anything.
