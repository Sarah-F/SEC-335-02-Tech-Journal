#!/bin/bash
# This version of code is made by Sarah F. and John T.
It puts the full output into a text file, and creates spaces between the different IP addresses.
hostfile=$1
portfile=$2
echo "host,port" > results.txt
for host in $(cat $hostfile); do
  for port in $(cat $portfile); do
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
      echo "$host,$port" > results.txt
  done
  echo #creates space between each IP address
done
