#!/bin/bash
name=$n1
state=$n2
echo "please enter your package's name"
read n1
echo name: $n1 > ./my-vars.yml
echo "please enter your favorit state"
read n2
echo state: $n2 >> ./my-vars.yml
ansible-playbook insapp.yml
