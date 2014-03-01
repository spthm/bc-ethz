#!/bin/bash 
# a simple trap function to see where a script stops 

trap 'my_exit $LINENO $BASH_COMMAND; exit' SIGHUP SIGINT SIGQUIT
my_exit()
{
echo "$(basename $0)  caught error on line : $1 command was: $2"

 # cleanp commands here if any
 }

for j in `seq 1 30`; do
	echo " sleeping sec"
	sleep $j
done 
