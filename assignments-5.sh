#!/bin/bash

if [ ls /tmp ];then
    echo "command executed sucessfully" $?
    else 
    echo "command failed to execute" $?
fi