# Command-line arguments
if [ -n "$1" ];
then
   age=$1
else
   age=23
fi

echo "Your age is ${age}"

for i in "$@"; # $@ is the command line arrugmets that are passed
do
echo $i
done



