#!/bin/bash
echo "enter today of the week"
read today

if [ "$today" != "sunday" ] && [ "$today" != "saturday" ]; then

    echo "$today is a weekday, get ready for work"
else
    echo "$today is a weekend, enjoy your day"
fi