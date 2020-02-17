#!/bin/bash -x

shopt -s extglob

# Welcome Message
echo "Welcome to User Registration "

# Accessing Input from User
read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
read -p "Enter Email-ID : " email

# storing patterns(rules) of valid information in variable
firstNamePattern="^[A-Z]{1}[a-z]{2,}$"
lastNamePattern="^[A-Z][a-z]{2,}$"
emailPattern="^([a-z]{3,}|[a-z]{3,}[.]{1}[a-z]{3,})[@]{1}([a-z]{2,}[.]{1}[a-z]{2,}|[a-z]{2,}[.]{1}[a-z]{2,}[.]{1}[a-z]{2,})$"

# Function to validate user information as per rules
validateUserInformation(){
input=$1
pattern=$2
	if [[ $input =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

# fuction calling with parameter passing
validateUserInformation $firstName $firstNamePattern
validateUserInformation $lastName $lastNamePattern
validateUserInformation $email $emailPattern
