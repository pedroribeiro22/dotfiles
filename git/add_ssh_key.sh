#!/bin/bash

function remove_previous_key() {
  rm -rf ~/.ssh/id_rsa
  rm -rf ~/.ssh/id_rsa.pub
}

function generate_key() {
  sh-keygen -t rsa -b 4096 -C "$email"
  ssh-add ~/.ssh/id_rsa
}

function add_key_to_github() {
  curl -u "$1:$2" -X POST -d
    "{\"title\":\"`hostname`\",\"key\":\"$3\"}"
    https://api.github.com/user/keys
}

# Script

remove_previous_key

read -p "Please the email associated with yout GitHub account: " email

generate_key

ssh_key=`cat ~/.ssh/id_rsa.pub`

read -p "Enter the username associated with yout GitHub account: " username

read -p "Enter the password associated with your GitHub account:" password

add_key_to_github $username $password $ssh_key
