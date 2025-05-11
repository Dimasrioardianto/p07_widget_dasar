import 'package:flutter/material.dart'; 

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor widget MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Menyesuaikan tampilan ke perangkat
      ),
      home: const Home(), // Halaman utama diarahkan ke Home
    );
  }
}

class Home extends StatelessWidget {
  // Deklarasi variabel data
  final String judul = 'Politeknik Negeri Bengkalis';
  final String lokasi = 'Bengkalis, Riau';
  final String deskripsi =
      "Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri "
      "yang berada di Riau. Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi "
      "PTN dengan nama Politeknik Negeri Bengkalis melalui Peraturan Menteri Pendidikan "
      "Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendirian, Organisasi dan Tata "
      "Kerja Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan "
      "yaitu teknik perkapalan, teknik mesin, teknik elektro, teknik sipil, administrasi niaga, "
      "teknik informatika, kemaritiman dan bahasa.";

  const Home({Key? key}) : super(key: key); // Konstruktor widget Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil POLBENG'), // Judul AppBar
      ),
      body: Column( // Mengatur konten secara vertikal
        mainAxisAlignment: MainAxisAlignment.center, // Rata tengah secara vertikal
        children: <Widget>[
          Image.asset( // Menampilkan gambar logo
            'images/polbeng.png',
            height: 245.0,
            width: 245.0,
            fit: BoxFit.fill, // Mengisi ruang gambar
          ),
          Container(height: 15.0), // Spasi vertikal
          Row(
            children: <Widget>[
              const SizedBox(
                width: 10.0,
                height: 10.0,
              ),
              Column( // Kolom informasi teks (judul dan lokasi)
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    judul, // Teks judul
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    lokasi, // Teks lokasi
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(width: 15.0), // Spasi horizontal
              const Icon( // Icon bintang
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              const Text( // Teks penilaian
                '5',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0), // Padding di sekeliling teks
            child: Text(
              deskripsi, // Menampilkan deskripsi panjang
              style: const TextStyle(
                fontSize: 15.0,
              ),
              softWrap: true, // Teks bisa dibungkus
            ),
          ),
        ],
      ),
    );
  }
}
