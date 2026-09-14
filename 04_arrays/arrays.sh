arr=(debottam rony okudera ichinose)

echo ${arr[@]} # Prints the entire array
echo ${!arr[@]} # Prints the indices of the array
echo ${#arr[@]} # Prints the lenght of the array
echo ${arr[*]} # Stringyfy Mode

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

echo "================================"

var1=3
echo "${arr[$var1]}"

echo "================================"

arr2=("${arr[@]}" buddy guy)
echo "${arr[@]}"

echo "================================"

arr2[0]=10
echo "${arr[@]}"
echo "${arr2[@]}"

echo "================================"

arr2+=(push pop)
echo "${arr2[@]}"

echo "================================"
# Sub Array
arr=(debottam okudera rony ichinose ayanokoji tubai gopal)
echo "All elements: ${arr[@]}" # Print all elements
echo "All elements: ${arr[@]:0}" # Print all elements start from index 0
echo "All elements: ${arr[@]:1}" # Print all elements start from index 1
echo "All elements: ${arr[@]:2}" # Print all elements start from index 2
echo "All elements: ${arr[@]:1:1}" # Start from index 1 and print 1 element