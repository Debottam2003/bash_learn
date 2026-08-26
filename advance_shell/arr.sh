arr=(debottam rony okudera ichinose)

echo ${arr[@]} # Prints the entire array
echo ${!arr[@]} # Prints the indices of the array
echo ${#arr[@]} # Prints the lenght of the array

for i in ${!arr[@]};
do
echo ${arr[$i]}
done
