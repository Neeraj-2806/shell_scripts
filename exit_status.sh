#!/bin/bash

host=www.google.com
ping -c 1 $host

if [ $? -eq 0 ] 
then 
 echo "connection successful"
else 
 echo "connection failed"
fi

