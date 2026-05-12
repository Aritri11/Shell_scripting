#!/bin/bash

# Store the first and second arguments passed to the script in variables
file=$1
file_operation=$2

# Check if the number of arguments is exactly 2
if [ "$#" -ne 2 ]; then
    echo "Usage: <file_name/folder_name based on operation> <file_operation/help to see list of operations>"
    exit 1
fi

# Function to delete a file or directory
delete() {
    # Check if the file or directory exists
    if [ -e "$file" ]; then
        rm -rf "$file"  # Remove the file or directory recursively and forcefully
        echo "File deleted"
    else
        echo "$file does not exist"
    fi
}

# Function to copy a file to a new location
copy () {
    # Check if the file exists
    if [ -e "$file" ]; then
        read -p "Enter Destination path to copy file: " path  # Prompt user for the destination path
        cp "$file" "$path"  # Copy the file to the specified destination
        echo "File copied"
    else
        echo "$file does not exist"
    fi
}

# Function to rename a file
rename () {
    # Check if the file exists
    if [ -e "$file" ]; then
        read -p "Enter the new name to rename file: " name  # Prompt user for the new file name
        mv "$file" "$name"  # Rename the file
        echo "File name is renamed"
    else
        echo "$file does not exist"
    fi
}

# Function to create a new file
create () {
    touch "$file"  # Create a new empty file
    echo "File is created"
}

# Function to list contents of a directory
list () {
    # Check if the file is a directory and exists
    if [ -d "$file" ] && [ -e "$file" ]; then
        echo "These are the list of items in $file"
        ls -l "$file"  # List the contents of the directory in long format
    else
        echo "$file is not a directory"
    fi
}

# Function to display help information
help () {
    echo "Follow the below instructions:"
    echo "These are the list of operations that can be done on a file:"
    echo "1). Delete: Provide file_name as argument_1 to be deleted and 'delete' as argument_2"
    echo "2). Copy: Provide file_name as argument_1 to be copied and 'copy' as argument_2"
    echo "3). Rename: Provide file_name as argument_1 to be renamed and 'rename' as argument_2"
    echo "4). Create: Provide file_name as argument_1 to create a new file and 'create' as argument_2"
    echo "5). List: Provide the directory name as argument_1 to list its contents and 'list' as argument_2"
}

# Convert the file_operation argument to lowercase to handle case insensitivity
operation=$(echo "$file_operation" | tr '[:upper:]' '[:lower:]')

# Execute the appropriate function based on the operation specified
case $operation in
    delete) delete ;;
    copy) copy ;;
    rename) rename ;;
    create) create ;;
    list) list ;;
    help) help ;;
    *) echo "$file_operation function is not defined" ;;
esac

