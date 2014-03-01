#!/bin/bash
#bash trap function 
# bash trap command
trap_sigint()
{
    echo "CTRL+C Detected !...executing bash trap !"

# for loop from 1/10 to 10/10
    for a in `seq 1 10`; do
        echo "$a/10 to Exit." 
         sleep 1;
    done
    echo "Exit Bash Trap Example!!!" 
    exit
}

trap_sighup()
{
    echo "sighup detected...executing bash trap !"

# for loop from 1/3 to 3/3
    for a in `seq 1 3`; do
        echo "$a/3 to Exit." 
         sleep 1;
    done
    echo "going back to main script!!!" 
}

trap_sigterm()
{
    echo "sigterm detected...executing bash trap !"

# for loop from 1/3 to 3/3
    for a in `seq 1 3`; do
        echo "$a/3 to Exit." 
         sleep 1;
    done
    echo "bye bye"
    exit 
}
trap trap_sigint  SIGINT
trap trap_sighup SIGHUP
trap trap_sigterm SIGTERM

# bash clear screen command
clear;
echo " now just waiting bad actions from outside....";
while :; do 
   echo -n '.'; 
   sleep 1; 
 done
# bash trap function is executed when CTRL-C is pressed:
# bash prints message => Executing bash trap subrutine !
