#!/bin/bash

# WebServer Of Linux - Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-068257025f72f470d" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-11a29978" \
--security-group-ids "sg-0394f8d3c65f5eb96" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=LinuxWebServer}]' \
--key-name "mumbai_awskeys" \
--user-data file://install-hostname.txt

# az vm create \
#   --resource-group myResourceGroup \
#   --name myVM \
#   --image Debian \
#   --admin-username azureuser \
#   --generate-ssh-keys