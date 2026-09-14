touch filename
rm filename

mkdir new_directory
rm -rf new_directory

cp source_file destination_file

# Rename
mv filename new_filename
mv old_directory new_directory

# Destination change
mv file1 file2 new_directory
mv old_directory destination_directory

# Open a file in an text editor
nano filename
vim filename
code filename

# Read a file
cat filename

# Write to a file
echo "Hello, World!" > filename
cat << EOF > filename
This is a multi-line
text that will be written
to the file.
EOF

# Append to a file
echo "New content" >> filename
cat << EOF >> filename
This is a multi-line
text that will be written
to the file.
EOF