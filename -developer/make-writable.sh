#! /bin/bash

#------------------------------------------------------------------

confFile="make-writable.conf"	# item list
basePath="/var/www/"		# Vtiger's base absolute folder path
apacheUser="www-data"		# Apache user
apacheGroup="www-data"		# Apache group

#-------------------------------------------------------------------

# Eventually override basePath from command line
if [ -n "$1" ]; then
	basePath="$1"
else
	echo "No base path specified: assuming $basePath"
fi

paths=()

let i=1
let nDir=0
let nFile=0
let nError=0
let nWildChar=0


echo "This script will change the ownership of the specified files and directories to $apacheUser:$apacheGroup."
echo "Loading list from $confFile"

while read -r line 
do
	line="$basePath$line"
	paths[i++]="$line"	
	if [ -d "$line" ]; then
		((nDir++))
	elif [ -f "$line" ]; then
		((nFile++))
    elif [ "${line:(-2)}" = "/*" ] && [ -d "${line:0:-2}" ]; then
        ((nWildChar++))
	else
		((nError++))
		echo "Warning: $line not found."
	fi		 
done < "$confFile"

echo "Found $((nDir+nFile+nWildChar)) lines: $nError errors"

if [[ $nError -gt 0 ]]; then
	echo "Please, create the required files and folders, and rerun this script."
	exit 1
fi

read -p "Press [Enter] key to apply changes..."

let i=1

for path in "${paths[@]}"; do
    	echo "$((i++)) $path"
	chown $apacheUser:$apacheGroup $path --verbose
done
