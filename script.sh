#!/bin/bash

echo -e "SCRIPT INFO"
pid=$$
script_name=$0
user_name=$USER
echo "Hello $user_name. You are running '$script_name' with pid '$pid'"

echo -e "\nFUNCTIONS"

func() {
    echo "Simple function without params"
}

func


with_params() {
    echo "Params $1" 
}

with_params 123

total_params=$#
first_param=$1
all_params=$@

echo -e "\nPARAMS INFO"
echo "I got $total_params params in the script"
echo "First parameter in the script is $first_param"
echo "Raw params are '$all_params'"

echo -e "\nBREAKING PARAMS"
for param in $all_params
do
    echo $param
done 