#!/usr/bin/bash
echo "This script is being executed"

read -p "Please enter a number:" end

nums=($(seq 0 $end))
echo "${nums[@]}"
for i in "${nums[@]}";do
	if [[ i%3 -eq 0 ]];then
		echo "Fizz!(I hate this champ)"
	elif [[ i%5 -eq  0 ]];then
		echo "Buzz Lightyear!"
	else
		echo "$i"
	fi
done
