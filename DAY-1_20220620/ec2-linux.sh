#!/bin/bash 

# Linux - Ubuntu 20.04
aws ec2 run-instances \
--image-id "ami-0851b76e8b1bce90b" \
--instance-type "t2.micro" \
--count 1 \
--subnet-id "subnet-421fef29" \
--security-group-ids "sg-0e8d2dc752b5c6069" \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=web},{Key=Environment,Value=Development}]' \
--key-name "aws-nv" \
--user-data file://web-hostname.txt
