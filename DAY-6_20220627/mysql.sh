#!/bin/bash

# Setup New Hostname
sudo hostnamectl set-hostname "db.cloudbinary.io"

# Update Hostname in /etc/hosts file
echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts

# Refresh the terminal
/bin/bash

# Update Ubuntu Repository 
sudo apt-get update 

# Download, & Install Utility Softwares 
sudo apt-get install git wget unzip curl tree -y 

# Download, Install & Configure MySQL DB
sudo apt-get install mysql-server -y

# Verification:
# systemctl status mysql
# systemctl restart mysql 
# systemctl status mysql 

# ps -aux | grep mysql  

# For the first time, we should configure DB
sudo mysql_secure_installation

# AzureDevOps@1999
# -> y
# -> LOW, Medium, Strong : 
# -> Set Password : ******
# -> Remove unwanted Users and Databases
# -> Commit and Re-login

# mysql> create user 'spider'@'%' IDENTIFIED BY 'Azure@123456';
# Query OK, 0 rows affected (0.01 sec)

# mysql> GRANT ALL ON *.* TO 'spider'@'%';
# Query OK, 0 rows affected (0.01 sec)

# mysql> FLUSH PRIVILEGES;
# Query OK, 0 rows affected (0.00 sec)




