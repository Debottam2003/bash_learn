a=5

if [[ 5 -lt 10 ]];
then
   echo "5 is lesser than 10"
fi

# For Integers:
# -eq   equal
# -ne   not equal
# -gt   greater than
# -ge   greater than or equal
# -lt   less than
# -le   less than or equal

# For strings:
# == → equal
# != → not equal
# -z → string is empty
# -n → string is not empty

# For files:
# | Test |      Meaning          |
# | ---- | --------------------- |
# |  -f  | regular file exists   |
# |  -d  | directory exists      |
# |  -e  | file/directory exists |
# |  -r  | readable              |
# |  -w  | writable              |
# |  -x  | executable            |

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