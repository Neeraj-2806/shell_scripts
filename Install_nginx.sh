#!/bin/bash

# first update the system

sudo apt-get update -y

# now install any tools

sudo apt install nginx -y

# now start nginx and enable the tools

sudo systemctl start nginx
sudo systemctl enable nginx

# serve the webpage
echo "<h1> this is practice done for linux </h1>" >index.html

#copy the file to nginx default web page
cp index.html /var/www/html/index.html

## either use this method of copying the file of the nginx default directory and run the file as sudo
