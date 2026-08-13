#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install curl wget gnupg apt-transport-https unzip -y

curl -O https://packages.wazuh.com/key/GPG-KEY-WAZUH
gpg --dearmor GPG-KEY-WAZUH
sudo mv GPG-KEY-WAZUH.gpg /usr/share/keyrings/wazuh-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/wazuh-archive-keyring.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list

sudo apt update
sudo apt install wazuh-manager -y

sudo systemctl enable wazuh-manager
sudo systemctl start wazuh-manager