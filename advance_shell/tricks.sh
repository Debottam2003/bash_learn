python << 'EOF' >> output.txt
print("hello world")
print("debottam")
EOF

echo "$(python -c "print('hello world!')")"