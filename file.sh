if [[ -f temp.txt ]]
then
    echo "File exists"
fi

#Read file
cat temp.txt

#Write file
echo "Hello World" > file.txt

#Append file
echo "New line" >> file.txt

#Count characters, words, lines
wc file.txt

t=$(cat file.txt)
echo "$t"

echo "hi" "debottam"
