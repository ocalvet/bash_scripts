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
select idx in $names
do
    if [[ $idx == 'Quit' ]]
    then
        break
    fi
    echo Hello $idx
done

cols=$( tput cols )
rows=$( tput lines )
message="HELLO WORLD!"
input_length=${#message}
half_input_length=$(( $input_length / 2 ))
middle_row=$(( $rows / 2 ))
middle_col=$(( ($cols / 2) - $half_input_length ))
tput clear
tput cup $middle_row $middle_col
tput bold
echo $message
tput sgr0
tput cup $( tput lines ) 0


read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo
echo Thankyou $uservar we now have your login details 

num_a=100
num_b=200

if [ $num_a -lt $num_b ]; then
    echo "$num_a is less than $num_b!"
fi