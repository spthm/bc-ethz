#!/bin/bash
# bash trap command
bashtrap()
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

trap bashtrap SIGINT

# bash clear screen command
clear;
echo " now just waiting bad actions from outside....";
while :; do 
   echo -n '.'; 
   sleep 1; 
 done
