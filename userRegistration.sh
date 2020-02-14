#!/bin/bash -x

echo "Welcome to User Registration "
echo -e "Enter Input : \c"
read input

firstName="^[A-Z]{1}[a-zA-z]{2,}$"
if [[ $input =~ $firstName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
