#!/bin/bash
while true; do
    echo "---------------------------------"
    echo " FILE MANAGEMENT SYSTEM MENU"
    echo "---------------------------------"
    echo "1. Create file  2. Delete file"
    echo "3. Rename file  4. List files"
    echo "5. Exit"
    read -p "Enter choice [1-5]: " choice
    case $choice in
        1) read -p "Name: " f; touch "$f"; echo "Created!";;
        2) read -p "Name: " f; rm "$f"; echo "Deleted!";;
        3) read -p "Old: " o; read -p "New: " n; mv "$o" "$n";;
        4) ls -p | grep -v /;;
        5) exit 0;;
        *) echo "Invalid";;
    esac
done
