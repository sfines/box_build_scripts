#! /usr/bin/env zsh

if [[ `uname` == "Darwin" ]]; then
    /bin/bash -c "$(NONINTERACTIVE=1; curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew install ansible
    ansible-galaxy collection install community.general
elif [[`uname` == "Debian"]]; then
    sudo apt update
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible git unzip
fi
