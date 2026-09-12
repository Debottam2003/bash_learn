#String
name="Debottam Kar"
# Number
age=23
echo "My name is ${name} and I am ${age} years old."
# Boolean
is_student=true
# Array
nick_names=("Debottam" "Rony" "Rupan")

first_name="Debottam"
last_name="Kar"
full_name="${first_name} ${last_name}"
echo "My full name is ${full_name}."
echo "Is student: ${is_student}"

echo "My nick names are: ${nick_names[@]}"

# Few environment variables
echo "Home directory: ${HOME}"
echo "Current working directory: ${PWD}"
echo "Shell: ${SHELL}"
echo "Hostname: ${HOSTNAME}"
echo "Username: ${USERNAME}"
echo "User ID: ${UID}" 
echo "Operating System: ${OSTYPE}"
echo "Path: ${PATH}"
