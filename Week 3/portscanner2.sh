#!/bin/bash

network_prefix=$1
port=$2
start=1
end=254
echo "ip,port"

for ip in $(10.0.5/24); do
  for port in $(53); do
    timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null &&
      echo "$ip,$port"
  done
  echo #creates space between each IP address
done


sudo ping -c 1 -g 10.0.5.0/24 -p 53

sudo nmap 10.0.5/24 -p 53 | cut -d " " -f 5 >> portScan2.txt
