name="debottam kar"

echo "${name}"
echo "LENGTH: ${#name}"
echo "First character uppercase: ${name^}"
echo "Uppercase Only 'd': ${name^^d}"
echo "Total uppercase: ${name^^}"
echo "${name}" # String is immutable

echo "================================"

name="DEBOTTAM KAR"
echo "First character lowercase: ${name,}"
echo "Lowercase Only 'd': ${name,,d}"
echo "Total lowercase: ${name,,}"
echo "${name}" # String is immutable

echo "================================"

name="debottam kar"
echo "Substring: ${name:0}" # Starts from index 0 and takes all characters
echo "Substring: ${name:3}" # Starts from index 3 and takes all characters
echo "Substring: ${name:0:1}" # Starts from index 0 and takes 1 characters
echo "Substring: ${name:3:7}" # Starts from index 3 and takes 7 characters

echo "Substring: ${name: -1}"
echo "Substring: ${name: -3}"

echo "================================"
length=${#name}
for ((i = 0; i < ${length}; i++)); 
do
    echo "${name:$i:1}"
done