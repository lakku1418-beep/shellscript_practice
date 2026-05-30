#!/bin/bash

if [ -d /tmp ];then
    echo "command executed sucessfully" 
    else 
    echo "command failed to execute" 
fi
if [ $? eq 0 ]; then
    echo "command executed sucessfully" 
    else 
    echo "command failed to execute" 
fi