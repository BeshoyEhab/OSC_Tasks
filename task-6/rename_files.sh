#!/bin/bash

IFS=$'\n'
path=$1

while [[ $path == "" ]]
	do read -p "Please enter a path: " path
done

for file in $(ls -a $path)
	do
		if [[ $file == *.txt ]]
			then
				mv "$path/$file" "$path/old_$file"
		fi
done

