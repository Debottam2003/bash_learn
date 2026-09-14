#!/usr/bin/env bash
declare -A my_array

my_array["name"]="John Doe"
my_array["age"]=30

echo "Name: ${my_array["name"]}"
echo "Age: ${my_array["age"]}"

echo "================================"

echo "All keys: ${!my_array[@]}"
echo "All values: ${my_array[@]}"
echo "Number of elements: ${#my_array[@]}"

echo "================================"

# Stringyfy Mode
echo "All keys: ${!my_array[*]}"
echo "All values: ${my_array[*]}"
echo "Number of elements: ${#my_array[*]}"