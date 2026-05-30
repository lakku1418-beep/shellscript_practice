#!/bin/bash


user_id=$(id -u)

if [ $? -ne 0 ]; then
 echo "Error: This command has to be run with superuser privileges (under the root user on most systems)"
    exit 1  
fi


