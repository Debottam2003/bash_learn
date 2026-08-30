a=5
b=10
echo "Before SWAP"
echo "a: ${a} and b: ${b}"

echo "================================"
# SWAP
a=$((a + b))
b=$((a - b))
a=$((a - b))
echo "After SWAP"
echo "a: ${a} and b: ${b}"

echo "================================"

echo "$((3 * 3 * 3))"
c=$((a + b))
echo "${c}"

echo "================================"
i=0
((i++))
echo "${i}"
((i *= 5))
echo "${i}"

echo "================================"
((max = a > b ? a : b)) # Ternary operator
echo "${max}"