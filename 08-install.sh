#!/bin/bash


user_id=$(id -u)

if [ $? -ne 0 ]; then
 echo "Error: This command has to be run with superuser privileges (under the root user on most systems)"
    exit 1  
fi


    if [ $? -eq 0 ]; then
    echo "$package_name installed successfully"
    else
    echo "failed to install $package_name"
    fi