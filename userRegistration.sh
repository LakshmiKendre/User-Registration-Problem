#!/bin/bash -x

shopt -s extglob
echo "Welcome to User Registration "
echo -e "Enter Input : \c"
read input

firstName="^[A-Z]{1}[a-z]{2,}$"
lastName="^[A-Z][a-z]{2,}$"

if [[ $input =~ $lastName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
