#!/bin/bash

read -p "enter the number of user you want to add" num_users

for (( i=1; i<=$num_users; i++ ))
do 
    read -p "enter the name of the user $i: " username
    read -s -p "enter the password  for user $i:" password
    echo 
      
     # create user account 
     sudo useradd $username 
     # set password for the user
     echo $username:$password | chpasswd 
 
     echo "user account $username created successfully"
done
