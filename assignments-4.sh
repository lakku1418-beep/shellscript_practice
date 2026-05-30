#!/bin/bash
echo "what is the name of the script:" $0
echo "who is running the script:"$USER
echo "present working directory is:" $PWD
echo "print home directory:" $HOME
echo "print the process ID of the script:" $$

sleep 10 &
echo "print the process ID of the sleep command:" $!
echo "script executed in :" $SECONDS
    