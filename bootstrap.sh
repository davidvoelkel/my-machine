#!/bin/bash
aptitude install curl git-core 

BASE_DIR=/tmp/my-machine
git clone https://github.com/davidvoelkel/my-machine $BASE_DIR

# Ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

$BASE_DIR/ansible-on-localhost.sh
