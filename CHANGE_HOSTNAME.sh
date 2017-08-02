#!/bin/bash

#ssh-copy-id -i ../.ssh/clavetower root@192.168.121.242
#ansible-playbook -i "192.168.121.242," -e "node_hostname=testhost.example.demo" ./hostname.yml 

if [ $# -ne 2 ]
then
  echo "Usage: $0 <IP_address_Host> <Hostname>"
else
  ssh-copy-id -i ../.ssh/clavetower root@${1}
  ansible-playbook -i "${1}," -e "node_hostname=${2}" ./hostname.yml 
  ansible-playbook -i "${1}," ./hosts_file.yml
  ansible-playbook -i "${1}," -e "node_hostname=${2}" -e "node_address=${1}" ./add_to_hosts_file.yml
fi
