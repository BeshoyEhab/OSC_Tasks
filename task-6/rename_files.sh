#!/bin/bash

IFS=$'\n'
path=$1

while [[ $path == "" ]]
	do read -p "Please enter a path: " path
done

for file in $(find $path -name "*.txt")
	do
		mv "$(dirname $file)/$(basename $file)" "$(dirname $file)/old_$(basename $file)"
done

