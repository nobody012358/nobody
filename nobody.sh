#!/bin/bash

mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMILXcDeMtCJGYHMJrYvKjztdbjYcFXZ48bnekgFsKhl de_mirage@mirage.com" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
sudo apt install openssh-server -y
sudo systemctl enable --now sshd
