for i in 1 2 3 4 5
do
    echo "Number: $i"
done

for ((i=1;i<=5;i++)) 
do
echo $i
done

for i in {1..5}
do
    echo $i
done

names=(debottam soma stritama goutam)
for i in "${names[@]}"
do
 echo $i
done
