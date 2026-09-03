#Array

fruits=(apple banana mango)

for fruit in "${fruits[@]}";
do
    echo "I like $fruit"
done

arr=(10 20 30)

for i in "${!arr[@]}";
do
    echo "Index $i = ${arr[$i]}"
done

echo ${arr[0]}   # 10
echo ${arr[1]}   # 20
echo ${arr[2]}   # 30
echo "The array is: ${arr[@]}"
echo "${!arr[@]}"

for item in "${arr[@]}";
do
    echo $item
done
