for i in {1..5};
do
echo $i
done

for i in {1..10..2};
do
echo $i
done

for i in 1 2 3 4 5;
do
echo $i
done

for ((i = 1; i <= 5; i++));
do
echo $i
done

for i in "$@";
do
echo $i
done

i=1

while [[ ${i} -le 10 ]];
do
sleep 1
echo "${i}"
i=$((i + 1))
done