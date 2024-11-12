# Stegseek 

Stegseek adalah cracker steghide secepat kilat yang dapat digunakan untuk mengekstrak data tersembunyi dari file. Ia dibuat sebagai cabang dari proyek steghide asli dan, sebagai hasilnya, ia ribuan kali lebih cepat dibandingkan cracker lainnya dan dapat menjalankan keseluruhan rockyou.txt* dalam waktu kurang dari 2 detik.

> _Sumber : [https://github.com/RickdeJager/stegseek#zap-stegseek](https://github.com/RickdeJager/stegseek#zap-stegseek)_

## Instalasi 

> Pastikan Anda sudah dalam mode superuser (root).

```
cd /usr/share ; apt-get update ; apt-get install libmhash-dev ; apt-get install libmcrypt-dev ; apt-get install libjpeg-dev ; apt-get install zlib1g-dev ; apt-get install build-essential ; apt-get install cmake ; apt-get install git ; git clone https://github.com/RickdeJager/stegseek.git ; cd stegseek ; mkdir -p build ; cd build ; cmake -DCMAKE_BUILD_TYPE=Release .. ; make ; make install ; cd -
```

# Penggunaan 

```
stegseek --crack -sf [stego_file.jpg] -wl [wordlist.txt] -f -v
```

**Keterangan**:

- **`--crack`** : Mengaktifkan mode cracking. 
- **`-sf`** : File stego yang akan di-crack.
- **`-wl`** : File wordlist yang akan digunakan dalam proses cracking.
- **`-f`** : Memaksa menimpa file output jika file tersebut sudah ada sebelumnya.
- **`-v`** : Menampilkan informasi rinci (verbose) selama proses cracking.

> Untuk penggunaan lebih lanjut ketikkan perintah '`stegseek --help`'

Hacking is fun ;)
