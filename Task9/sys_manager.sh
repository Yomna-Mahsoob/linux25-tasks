echo "================ Linux System Manager ================"
echo " 1. Show System Information"
echo " 2. Check File Permissions"
echo " 3. Change File Permissions"
echo " 4. Compress a File/Directory"
echo " 5. Decompress a File"
echo " 6. Exit"
echo "=========================================="
echo "Enter your choice: "
read choice
case $choice in 
1)
    user=$(whoami)
    echo "Current user: $user" ;;
2)
    echo "Enter the file or directory path:"
    read file
    Permissions=$(ls -l "$file")
    echo "Permissions for $file: $Permissions" ;;
3)
    echo "Enter the file or directory path:"
    read file
    echo "Enter new permissions:"
    read new_permissions
    chmod $new_permissions $file
    Permissions=$(ls -l "$file")
    echo "Permissions for $file: $Permissions";;
4)
    echo "Enter the file/directory name: "
    read file

    echo "Choose compression type: "
    echo " 1. tar.gz"
    echo " 2. zip"
    echo "Enter your choice:"
    read compress_choice

    if [[ $compress_choice -eq 1 ]]
    then
        tar -czvf "$file.tar.gz" "$file"
        echo "Compression successful: $file.tar.gz created."
    elif [[ $compress_choice -eq 2 ]]
    then
        zip -r "$file.zip" "$file"
        echo "Compression successful: $file.zip created."
    else
        echo "Invalid choice. Please choose 1 or 2."
    fi
    ;;
5)
    echo "Enter the compressed file name: "
    read file
    echo "Enter extension (tar.gz or zip):"
    read extension

    if [[ $extension == "tar.gz" ]]
    then
        echo "Extracting..."
        tar -xzvf "$file"
        echo "Decompression successful."
    elif [[ $extension == "zip" ]]
    then
        echo "Extracting..."
        unzip "$file"
        echo "Decompression successful."
    else
        echo "Unsupported file format."
    fi
    ;;
6)
    echo "Exiting the system manager. Goodbye!" ;;
*)
    echo "Invalid choice. Please choose a number between 1 and 6." ;;
esac
