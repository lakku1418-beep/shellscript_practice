#!/bin/bash
SERVER_NAME=webserver01
OS_NAME=$(cat /etc/os-release | grep PRETTY)
DISK_USAGE=$(df -h /)
MEMORY_USAGE=$(free -h) 
UPTIME=$(uptime)
section() {
    echo "------------------------------------"   
    echo "$1"
    echo "------------------------------------" 


}
section "System Info report for $SERVER_NAME"
echo " script PID : $$"
echo " started at : $(date)"
echo " user : $USER"
echo " OS : $OS_NAME"
echo " Disk usage : $DISK_USAGE"  
echo " Memory usage : $MEMORY_USAGE"
echo " uptime : $UPTIME"
echo "script completed time : $SECONDS seconds"

