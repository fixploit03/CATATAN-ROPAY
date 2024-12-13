# Hash

## Apa itu Hash

`Hash adalah keluaran dari fungsi hash, sebuah algoritma matematika yang menerima data masukan dengan ukuran arbitrer (tidak tetap) dan menghasilkan keluaran (hash value) dengan panjang tetap.` Fungsi hash termasuk kategori algoritma kriptografi dan memiliki sifat-sifat tertentu yang membuatnya berguna dalam keamanan siber.

## Sifat-Sifat Fungsi Hash

1. **Deterministik**

- Input yang sama akan selalu menghasilkan hash yang sama.

  **Contoh**:

  - Input: `Hello, World`
  - Hash: `9af2f8218b150c351ad802c6f3d66abe` (MD5)

2. **Non-Reversible (One-Way)**
   
   Tidak mungkin mengembalikan hash menjadi data aslinya. Hal ini penting untuk melindungi informasi sensitif seperti password.

3. **Unik (Collision Resistance)**
   
   Dua input berbeda seharusnya tidak menghasilkan hash yang sama. Jika terjadi tabrakan (collision), artinya fungsi hash tersebut tidak aman.

4. **Panjang Tetap**
   
   Hasil hash selalu memiliki panjang tetap, tidak peduli ukuran inputnya.
   
   **Contoh**:

   - `Hello` → Hello, 09f7e02f1290be211da707a266f153b3 (MD5, 128-bit)
   - `World!` → 721555611292f461f890ba3a1dce279a (MD5, 128-bit)

5. **Cepat Dihitung**
   
   Algoritma hash dirancang untuk bekerja cepat, sehingga dapat digunakan untuk proses verifikasi, pencocokan data, atau kriptografi.

6. **Avalanche Effect**
    
   Perubahan kecil pada input (misalnya mengubah satu karakter) akan menghasilkan hash yang sepenuhnya berbeda.

   **Contoh**:

   - Input: `Hello, World!` → `SHA-1`:
60fde9c2310b0d4cad4dab8d126b04387efba289
   - Input: `HEllo, World!` → `SHA-1`:
8430358a15a560c124ff713fd4849516e885e0a7

## Manfaat Hash dalam keamanan Cyber 
   
1. **Verifikasi Integritas Data**
   
   Ketika data dikirimkan melalui jaringan, hash digunakan untuk memastikan data tidak dimodifikasi.

   **Contoh**:

   Checksum pada file download. Sebelum mengunduh software, pengembang sering menyediakan hash (misalnya SHA-256) agar pengguna dapat memverifikasi file tersebut.

2. **Penyimpanan Kata sandi**
   
   - Sistem tidak menyimpan kata sandi asli, tetapi menyimpan hasil hash dari kata sandi.
   - Ketika pengguna login, kata sandi yang dimasukkan akan di-hash, kemudian dicocokkan dengan hash yang tersimpan.

3. **Digital Signatures dan Certificate**
   
    Fungsi hash digunakan dalam tanda tangan digital untuk memastikan dokumen atau pesan berasal dari sumber terpercaya.

4. **Blockchain dan Cryptocurrency**
   
Hash digunakan untuk mencatat transaksi dan memastikan integritas blok dalam blockchain. Contoh: SHA-256 digunakan dalam Bitcoin.

5. **Forensik Digital**
    
    Dalam analisis forensik, hash digunakan untuk membuktikan bahwa bukti digital (file, email, dll.) tidak berubah sejak pertama kali ditemukan.

## Jenis-jenis Hash yang Umum Digunakan 

1. **MD5**
   
   - **Panjang Hash**: 128-bit.
   - **Penjelasan**: 
    MD5 adalah salah satu fungsi hash yang dulu sangat populer karena kecepatannya. Namun, algoritma ini sudah dianggap tidak aman karena rentan terhadap collision attacks (dua input berbeda menghasilkan hash yang sama).
   - **Penggunaan**:
    Masih digunakan untuk checksum file sederhana, tetapi tidak direkomendasikan untuk keamanan.

2. **SHA**
   
   1. **SHA-1**
      
      - **Panjang Hash**: 160 bit.
      - **Penjelasan**: Dulu digunakan secara luas untuk sertifikat SSL dan tanda tangan digital. Namun, SHA-1 sudah tidak aman karena rentan terhadap collision.
      - **Penggunaan**: Digantikan oleh SHA-2 dan SHA-3.
        
   2. **SHA-2**
      
      - **Panjang Hash**: 224, 256, 384, atau 512-bit.
      - **Penjelasan**: SHA-2 adalah keluarga fungsi hash yang lebih kuat daripada SHA-1. SHA-256 adalah yang paling sering digunakan di aplikasi modern seperti blockchain.
      - **Penggunaan**: TLS/SSL, cryptocurrency (Bitcoin menggunakan SHA-256), dan tanda tangan digital.

Dan masih banyak lainnya ^_^.