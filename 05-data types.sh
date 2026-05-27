#!/bin/bash
echo "enter your current age"
read age
targetage=60
remaing_years=$(($targetage-$age))
echo "remaing years $remaing_years to reach untill $targetage"
if [ $remaing_years -gt 0 ]; then
    echo "you have $remaing_years years to reach $targetage"
else
    echo "you have already reached $targetage"
fi