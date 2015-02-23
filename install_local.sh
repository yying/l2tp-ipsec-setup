#!/bin/sh

printf "Installing ansible\n"
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

printf "Running ansible playbook\n"
sudo ansible-playbook -v -i "localhost," -c local main.yml
