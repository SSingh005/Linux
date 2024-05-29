#!/usr/bin/bash
echo "This script is being executed"
nums=()
while true;do
	read -p "Please enter a number or input 'exit' to quit: " userin
	#if [[ $userin == ${"exit"^^} || ${"exit",,} ]];then
	if [[ $userin == 'exit' ]]; then
		break
	elif [[ $userin =~ ^[0-9]+$ ]];then
		nums+=($userin)
	else
		echo "Invalid number. Try again..."
	fi
done

#IFS=$'\n' sort_nums=($(sort -n <<<"${nums[*]}"))
#unset IFS

#for value in "${sort_nums[@]}"; do
#	echo "$value"
#done

sort_nums=($(printf "%s\n" "${nums[@]}" | sort -n))
echo "Numbers entered in order: " "${sort_nums[@]}"

