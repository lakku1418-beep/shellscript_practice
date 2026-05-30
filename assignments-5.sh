#!/bin/bash

if [ -d /tmp ];then
    echo "directory exists" 
    else 
    echo "directory does not exist" 
fi
if [ $? -eq 0 ]; then
    echo "command executed sucessfully" 
    else 
    echo "command failed to execute" 
fi