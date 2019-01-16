#!/bin/bash
#add fix to exercise5-server1 here
sudo  grep -q '192.168.100.11 server2' /etc/hosts ||  echo '192.168.100.11 server2' | sudo tee --append  /etc/hosts

