#!/bin/bash
apt update
apt install apache2 -y
service apache2 restart
systemctl enable apache2
