#!/bin/bash

sudo apt install kibana -y

sudo sed -i 's/#server.host:.*/server.host: "0.0.0.0"/' /etc/kibana/kibana.yml

sudo systemctl enable kibana
sudo systemctl start kibana