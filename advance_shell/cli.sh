# Command-line arguments
if [ -n "$1" ];
then
   age=$1
else
   age=23
fi

echo "Your age is ${age}"

for i in "$@";
do
echo $i
done



