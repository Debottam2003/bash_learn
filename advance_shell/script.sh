#!/usr/bin/env bash
echo "this is the first shell script"

NAME='Debottam Kar'
AGE=23
UNAME=${USER} # Assigning the value of the USER environment variable to UNAME variable
HOSTNAME=${HOSTNAME} # Assigning the value of the HOS'TNAME environment variable to HOSTNAME variable
IP=$(ip a | grep -oE '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') # Assigning the output of the 'ip a' command to IP variable
EMAILS=$(cat ./file.txt | grep -oE '[a-z0-9_.-]{3,100}@gmail\.com') # Emails matching regex

echo "My name is ${NAME} and my age is ${AGE}"
echo "My username is ${UNAME}"
echo "My hostname is ${HOSTNAME}"
echo "My IP address is ${IP}"
echo "My email addresses are: ${EMAILS}"