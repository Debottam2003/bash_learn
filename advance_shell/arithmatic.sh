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