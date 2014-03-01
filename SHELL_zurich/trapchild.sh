#!/bin/bash
# trapchild

sleep 120 &

pid="$!"

sleep 120 &
pid="$pid $!"

echo "my process pid is: $$"
echo "my child pid list is: $pid"

trap 'echo I am going down, so killing off my processes..; kill $pid; exit' SIGHUP SIGINT SIGQUIT SIGTERM 

wait
