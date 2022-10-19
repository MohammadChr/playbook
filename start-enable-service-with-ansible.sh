#!/bin/bash
echo "enter you host's name"
read hostname
echo "enter your service's name"
read servicename
echo  "- hosts: $hostname\n"\
  " tasks:\n"\
   " - apt: name=$servicename state=present\n"\
   " - service: name=$servicename state=started enabled=yes\n"\
> /home/chr/playbook2.yml
ansible-playbook /home/chr/playbook2.yml
