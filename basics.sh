a=5
b=10

#let's sum

sum=$((a + b))

echo $sum

#let's swap with using third variable

echo "a: $a b: $b"

# Reading the variable use $

temp=$a
a=$b
b=$temp

echo "a: $a b: $b"

# let's swap with out using third variable

a=$((a+b))
b=$((a-b))
a=$((a-b))

echo "a: $a b: $b"
