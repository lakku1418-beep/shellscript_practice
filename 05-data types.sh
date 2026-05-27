#!/bin/bash
echo "enter your current age"
read age
target-age=60
years-left=$((target-age-age))
echo "you need  $years-left to reach untill $target-age"
