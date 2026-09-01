name="debottam kar"

echo "${name}"
echo "LENGTH: ${#name}"
echo "First character uppercase: ${name^}"
echo "Uppercase Only 'd': ${name^^d}"
echo "Total uppercase: ${name^^}"
echo "${name}" # String is immutable

echo "================================"

name="DEBOTTAM KAR"
echo "First character lowercase: ${name,}"
echo "Lowercase Only 'd': ${name,,d}"
echo "Total lowercase: ${name,,}"
echo "${name}" # String is immutable
