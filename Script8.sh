#!/usr/bin/bash
echo "This script is being executed"
echo $PWD
read -p "Please enter a directory to check:" dir

echo $dir
if [[ ! -d "$dir" ]]; then
	echo "Invalid directory name. Please try again."
	exit 1
fi

cd "./$dir" || exit

echo $PWD

files=$(find . -type f | wc -l)

cd ..
lastedit=$(stat -c %y "./$dir")

cd "./$dir"

echo "File count in directory $dir: $files"
echo "Last edit in directory: $lastedit"

if [[ "$files" -gt 0 ]]; then
	bigfile=$(find . -type f -exec ls -s {} + | sort -n | tail -1 | awk '{print $2}') 
	smallfile=$(find . -type f -exec ls -s {} + | sort -n| head -1 | awk '{print $2}')

	echo "Biggest file: $bigfile"
	echo "Smallest file: $smallfile"

else
	echo "No files found in $dir"
fi 
