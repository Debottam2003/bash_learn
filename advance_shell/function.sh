greet() {
    local name=$1
    echo "${name}"
}

greet "debottam"

var=$(greet "rony")
echo "var is ${var}"

greet "debottam kar" >> test.txt 