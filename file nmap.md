📄 nmap.dtd

    Jenis: File DTD (Document Type Definition).

    Fungsi: Mendefinisikan struktur XML yang digunakan dalam output XML dari Nmap.

    Kegunaan: Berguna jika kamu ingin parsing output Nmap XML secara formal menggunakan XML parser.

📄 nmap-mac-prefixes

    Jenis: Database prefix MAC address.

    Fungsi: Digunakan untuk mengidentifikasi vendor perangkat berdasarkan MAC address.

    Kegunaan: Misalnya, MAC address 00:1C:B3 bisa dikenali sebagai milik Cisco.

📄 nmap-os-db

    Jenis: Database deteksi sistem operasi.

    Fungsi: Digunakan untuk mencocokkan fingerprint hasil scan dengan OS yang dikenali.

    Kegunaan: Menentukan apakah target menjalankan Linux, Windows, dll.

📄 nmap-payloads

    Jenis: Kumpulan payload.

    Fungsi: Digunakan saat Nmap melakukan scanning UDP atau protokol tertentu, untuk mengirim data yang sesuai.

    Kegunaan: Memperbesar kemungkinan target merespon agar Nmap bisa mendeteksi layanan yang berjalan.

📄 nmap-protocols

    Jenis: Daftar protokol Internet.

    Fungsi: Digunakan untuk memetakan nomor protokol ke nama protokol.

    Contoh: 6 adalah TCP, 17 adalah UDP.

📄 nmap-rpc

    Jenis: Daftar layanan RPC.

    Fungsi: Digunakan saat mendeteksi layanan RPC (Remote Procedure Call).

    Kegunaan: Mendeteksi dan mengenali layanan yang berjalan pada sistem Unix/Linux yang menggunakan RPC.

📄 nmap-service-probes

    Jenis: Database probe layanan.

    Fungsi: Inti dari deteksi layanan (service detection) Nmap.

    Kegunaan: Digunakan untuk mengirimkan berbagai payload ke port terbuka, dan menilai responnya untuk menentukan layanan.

📄 nmap-services

    Jenis: Daftar port dan layanan umum.

    Fungsi: Memetakan port ke nama layanan.

    Contoh: 80/tcp = http, 443/tcp = https.

📄 nmap.xsl

    Jenis: File XSL stylesheet.

    Fungsi: Digunakan untuk memformat output XML Nmap agar bisa ditampilkan dengan gaya visual yang lebih bagus di browser.

    Kegunaan: Jika kamu membuka file .xml dari Nmap di browser, file ini digunakan untuk styling-nya.

📁 nselib

    Jenis: Direktori.

    Fungsi: Berisi library LUA yang digunakan oleh Nmap Scripting Engine (NSE).

    Kegunaan: Skrip NSE bisa mengimpor modul dari sini, seperti http.lua, dns.lua, dll.

📄 nse_main.lua

    Jenis: Skrip utama NSE.

    Fungsi: Berisi logic utama untuk menjalankan NSE (Nmap Scripting Engine).

    Kegunaan: Menyusun dan mengatur eksekusi skrip dalam tahap scan.

📁 scripts

    Jenis: Direktori.

    Fungsi: Berisi skrip NSE.

    Kegunaan: Skrip untuk berbagai tujuan seperti deteksi service, vulnerability scanning, brute force, dll.

    Contoh: http-enum.nse, ftp-anon.nse, smb-os-discovery.nse.
