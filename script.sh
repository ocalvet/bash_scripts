#!/bin/bash

# Print something to the screen
echo -e "SCRIPT INFO"
# Get process id
pid=$$
# Get the name of the script
script_name=$0
# What user is running this script
user_name=$USER

echo "Hello $user_name. You are running '$script_name' with pid '$pid'"

echo -e "\nFUNCTIONS"

# Function declaration
func() {
    echo "Simple function without params"
}

# How to call a fundtion
func

# Function that takes in a prameter
with_params() {
    echo "Calling function with params $1" 
}

with_params 123

# Get parameter information
total_params=$#
first_param=$1
all_params=$@

echo -e "\nPARAMS INFO"
echo "I got $total_params params in the script"
echo "First parameter in the script is $first_param"
echo "Raw params are '$all_params'"

echo -e "\nBREAKING PARAMS"
# For loop syntax
for param in $all_params
do
    echo $param
done 


echo -e "\nWHILE LOOP"
counter=1
while [ $counter -le 10 ]
do
    echo $counter
    ((counter++))
done

echo -e "\nMENU"
names='Kyle Cartman Stan Quit'
PS3='Select character: '
select name in $names
do
    if [[ $name == 'Quit' ]]
    then
        break
    fi
    echo Hello $name
done