read -p "Enter your name: " name
echo "Hello, ${name}"
read -p "Enter your age: " age
printf "Name: %s Age: %s\n" "${name}" "${age}"