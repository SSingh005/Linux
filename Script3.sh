#!/usr/bin/bash
echo "This script is being executed"

echo "Enter a number please:"
read num
check=$(( $num % 2 ))
if [ $check -eq 0 ]
	then
	echo "$num is an even number" >> file_3.txt
	else
	echo "$num is an odd number" >> file_3.txt
fi

mv file_3.txt ../changedFileName
