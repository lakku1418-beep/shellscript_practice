#!/bin/bash
LOG_FILE="/tmp/system_info.log"
09-system_info.sh &>> $LOG_FILE

if [ $? -eq 0 ]; then
    echo "script executed successfully"
else
    echo "script failed to execute"
fi  