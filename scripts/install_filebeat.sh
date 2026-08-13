#!/bin/bash

sudo apt install filebeat -y

sudo systemctl enable filebeat
sudo systemctl start filebeat