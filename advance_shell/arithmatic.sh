a=5
b=10
echo "a: ${a} and b: ${b}"

echo "================================"
# SWAP
a=$((a + b))
b=$((a - b))
a=$((a - b))
echo "a: ${a} and b: ${b}"