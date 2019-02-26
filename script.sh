#!/bin/bash

# Print something to the screen
echo "SCRIPT INFO"
# add -e to enable line breaks and tabs
echo -e "\tHello there\nWhat"

# Get process id
pid=$$

# Get the name of the script
script_name=$0

# What user is running this script
user_name=$USER
or_user=$(whoim)

echo "Hello $user_name. You are running '$script_name' with pid '$pid', and whoim=$or_user"

# Functions are just a way to group commands into a command - function name
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

# Pass parameters to a function separated by space just like in the terminal
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

# Terminal manipulation
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

# Read input from terminal
read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo
echo Thankyou $uservar we now have your login details 

if [ $passvar = "pass123" ]; then
    echo "$uservar you are logged in"
else
    echo "Wrong password"
fi
