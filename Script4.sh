#!/usr/bin/bash
echo "This script is being executed"

echo "Enter a username:"
read usr
echo $(id $usr)


