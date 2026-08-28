ff=$(fastfetch)
echo "this is ${ff}"

echo "================================"

whoami
echo "$(whoami)"
echo `whoami` # I will nort prefer this

echo "================================"

echo "Outer Layer ($(echo "Inner Layer ($(whoami))"))"

echo "================================"

i=5
my_func() {
    # local i=6
    i=6
    echo "${i}"
    echo "hi"
}

# my_func
thing=$(my_func)
echo "${thing} hello"
echo "${i}"