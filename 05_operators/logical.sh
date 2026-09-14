# Logical Operators:
# &&   AND
# ||   OR
# !    NOT

name="debottam"
age=23
file="test.txt"

if [[ $age -ge 18 && $age -le 60 ]]; then
    echo "Valid age"
fi

if [[ $name == "Alice" || $name == "Bob" ]]; then
    echo "Name matched"
fi

if [[ ! -f "test.txt" ]]; then
    echo "File does not exist"
fi

if [[ -f "$file" && -r "$file" ]]; then
    echo "File exists and is readable"
fi