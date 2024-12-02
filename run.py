#!/bin/bash

# Tentukan path folder yang ingin diperiksa
FOLDER_PATH="/usr/share/john/run"

# Daftar nama file yang ingin diperiksa
FILE_NAMES=(
    "john.exe"
    "rar2john.exe"
    "zip2john.exe"
    "7z2john.pl"
    "pdf2john.pl"
    "office2john.py"
)

# Cek apakah folder ada
if [ -d "$FOLDER_PATH" ]; then
    echo "Folder '$FOLDER_PATH' ditemukan."

    # Cek setiap file dalam daftar
    for FILE_NAME in "${FILE_NAMES[@]}"; do
        FILE_PATH="$FOLDER_PATH/$FILE_NAME"
        if [ -f "$FILE_PATH" ]; then
            echo "File '$FILE_NAME' ditemukan di dalam folder."
        else
            echo "File '$FILE_NAME' TIDAK ditemukan di dalam folder."
        fi
    done
else
    echo "Folder '$FOLDER_PATH' TIDAK ditemukan."
fi


aHR0cHM6Ly9lLWhlbnRhaS5vcmcvZy8zMTI4MzA4LzZlMjdhNzZjNGYvCg==
