#!/bin/bash

# Setup New Hostname
sudo hostnamectl set-hostname "web.cloudbinary.com"

# Update Hostname in /etc/hosts file
echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts

# Refresh the terminal
/bin/bash


