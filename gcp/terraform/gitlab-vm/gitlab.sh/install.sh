#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl openssh-server ca-certificates tzdata perl
sudo apt-get install -y wget telnet
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
sudo EXTERNAL_URL="https://gitlab.example.com" apt-get install gitlab-ee
sudo apt-get purge appamor -y
sudo hostnamectl set-hostname gitlab01
sudo timedatectl set-timezone America/Sao_Paulo
