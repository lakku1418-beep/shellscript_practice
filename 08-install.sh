#!/bin/bash
package_name=$1

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
 echo "Error: This command has to be run with superuser privileges (under the root user on most systems)"
    exit 1  
fi
VALIDATE() 
      {
        if [ $2 -eq 0 ]; then
             echo "installing $1  ..... SUCCESS" 
             else 
             echo "installing $1  ..... FAILED" 
        fi
      }
print_header() 
        {
        echo "===================================================="
        echo "$1"
        echo "===================================================="     
        }

    dnf list installed $package_name
    if [ $? -eq 0 ]; then
         echo "$package_name already installed"
      else
        print_header "installing $package_name"

        dnf install $package_name -y
        VALIDATE $package_name $?
      
    fi


