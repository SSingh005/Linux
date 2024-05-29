#!/usr/bin/bash
echo "This script is being executed"
ps -aux

echo "Enter a process id to terminate:"
read pid
$(kill $pid)

top


