#!/bin/bash
echo "enter your current age"
read age
targetage=60
remaing_years=$(($targetage-$age))
echo "remaing years $remaing_years to reach untill $targetage"
