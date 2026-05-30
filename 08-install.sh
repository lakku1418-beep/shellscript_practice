#!/bin/bash
package_name=$1
user_id=$(id -u)

if [ $? -ne 0 ]; then
 echo " permissions denined to exceute the script"
    exit 1  
fi
dnf list installed $package_name
 if [ $? -eq 0 ]; then
    echo "$pacage_name already installed"
    else
    echo " install $pacage_name"
 fi
dnf install $pacage_name -y

    if [ $? -eq 0 ]; then
    echo "$pacckage_name installed successfully"
    else
    echo "failed to install $package_name"
    fi