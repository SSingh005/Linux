#!/usr/bin/bash
echo "This script is being executed"
mkdir WAT_Steven
cd ./WAT_Steven
touch file_1.txt file_2.txt file_3.txt
echo "Testing 123" > file_1.txt
mkdir childDir
cp file_1.txt ./childDir
