#!/bin/bash
SERVER_NAME=webserver01
OS_NAME=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f 2 )
DISK_USAGE=$(df -h / | tail -1 | awk '{print $3 "used out of " $2}')  
MEMORY_USAGE=$(free -h | grep Mem | awk '{print $3 " used out of " $2}')
UPTIME=$( uptime | awk -F "," '{print $1}')

LOG_FILE="/tmp/system_info.log"
section() {
    echo "------------------------------------"   
    echo "$1"
    echo "------------------------------------" 

}
section "System Info report for $SERVER_NAME" 

echo " script PID     : $$"
echo " started at     : $(date)"
echo " user           : $USER"
echo " OS             : $OS_NAME"
echo " Disk usage     : $DISK_USAGE"  
echo " Memory usage   : $MEMORY_USAGE"
echo " uptime         : $UPTIME"

echo "======================================="
sleep 5 &
wait    
echo "script completed time : $SECONDS seconds"
if [ $0 = 0 ]; then
   $0 &>> $LOG_FILE
    echo "script executed successfully"
else
    echo "script failed to execute"
fi



#sh $0 &>> $LOG_FILE




