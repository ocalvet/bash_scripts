#!/bin/bash

pid=$$
script_name=$0
user_name=$USER
echo "Hello $user_name. You are running '$script_name' with pid '$pid'"

say() {
    echo "Hello  World!"
}

say

total_params=$#
first_param=$1
all_params=$@

echo "I got $total_params params in the script"
echo "First parameter in the script is $first_param"
echo "Raw params are '$all_params'"

ls -lart