#!/usr/bin/env bash

a=2
b=2

echo "a = ${a} b = ${b}"

if [[ $a -eq $b ]];
then
   echo "a = ${a} is eual to b = ${b}"
else
   echo "a = ${a} is not eual to b = ${b}"
fi

c=5
d=10 

if [[ $c -ne $d ]];
then
   echo "c = ${c} is not eual to d = ${d}"
else
   echo "c = ${c} is eual to d = ${d}"
fi

if [[ -f ./file.txt ]];
then
   echo "The file does exist."
else
   echo "The file does not exist."
fi

x=10
y=10

if [[ $x -gt $y ]];
then
   echo "True"
else
   echo "False"
fi

if [[ $x -lt $y ]];
then
   echo "True"
else
   echo "False"
fi

if [[ $x -ge $y ]];
then
   echo "True"
else
   echo "False"
fi

if [[ $x -le $y ]];
then
   echo "True"
else
   echo "False"
fi