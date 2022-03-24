#! /usr/bin/env zsh

if [[ `uname` == "Darwin" ]]; then
    brew install ansible
    ansible-galaxy collection install community.general
elif [[`uname` == "Debian"]]; then
    sudo apt update
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible git unzip
fi
