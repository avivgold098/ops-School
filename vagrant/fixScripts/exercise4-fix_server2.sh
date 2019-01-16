#!/bin/bash
#add fix to exercise4-server2 here
sudo  grep -q '192.168.100.10 server1' /etc/hosts ||  echo '192.168.100.10 server1' | sudo tee --append  /etc/hosts
su - vagrant -c 'ssh-keygen -t rsa -N "" -b 4096 -f ~vagrant/.ssh/id_rsa '
sudo apt-get install sshpass -y 
cat ~vagrant/.ssh/id_rsa.pub | sshpass -p 'vagrant' ssh -o StrictHostKeyChecking=no vagrant@server1 'cat >> ~vagrant/.ssh/authorized_keys'
su - vagrant -c "ssh -o StrictHostKeyChecking=no vagrant@server1 'cat ~vagrant/.ssh/id_rsa.pub' >> ~vagrant/.ssh/authorized_keys"



