arr=(debottam rony okudera ichinose)

echo ${arr[@]} # Prints the entire array
echo ${!arr[@]} # Prints the indices of the array
echo ${#arr[@]} # Prints the lenght of the array
echo ${arr[*]}

echo "================================"

for i in ${!arr[@]};
do
echo ${arr[$i]}
done

echo "================================"

for item in ${arr[@]};
do
echo $item
done

echo "================================"

echo "${arr[0]}"
echo "${arr[1]}"
echo "${arr[2]}"
echo "${arr[3]}"

echo "================================"

echo "${arr[-1]}"
echo "${arr[-2]}"
echo "${arr[-3]}"
echo "${arr[-4]}"