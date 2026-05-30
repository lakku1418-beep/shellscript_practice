#!/bin/bash
package_name=$1

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
 echo "Error: This command has to be run with superuser privileges (under the root user on most systems)"
    exit 1  
fi

dnf list installed $package_name
 if [ $? -eq 0 ]; then
   echo "$package_name already installed"
   exit 1
    
 fi
   echo " installing $package_name"
   dnf install $package_name -y
  if  [ $? -eq 0 ]; then

    echo "installing $package_name ..... SUCCESS"
    else
    echo "installing $package_name ..... FAILED"
 fi


