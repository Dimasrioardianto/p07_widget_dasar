import 'package:flutter/material.dart'; // Import library material Flutter

void main() {
  runApp(const MyApp()); // Fungsi utama untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor dari StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Softwrap App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Tampilan sesuai perangkat
      ),
      home: const Home(), // Menampilkan widget Home sebagai halaman utama
    );
  }
}

class Home extends StatelessWidget {
  // Deklarasi teks panjang
  final String longText = 
    "Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri "
    "yang berada di Riau. Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi "
    "PTN dengan nama Politeknik Negeri Bengkalis melalui Peraturan Menteri Pendidikan "
    "Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendirian, Organisasi dan Tata "
    "Kerja Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan "
    "yaitu teknik perkapalan, teknik mesin, teknik elektro, teknik sipil, administrasi niaga, "
    "teknik informatika, kemaritiman dan bahasa.";

  const Home({Key? key}) : super(key: key); // Konstruktor dari StatelessWidget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.softWrap'), // Judul AppBar
      ),
      body: Column( // Widget utama vertikal
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(5.0), // Margin semua sisi
            padding: const EdgeInsets.all(10.0), // Padding semua sisi
            child: const Text(
              'Politeknik Negeri Bengkalis', // Judul teks utama
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold, // Tebal
              ),
            ),
          ),
          Container(
            height: 10.0, // Spasi vertikal antar konten
          ),
          Container(
            margin: const EdgeInsets.all(5.0), // Margin teks isi
            padding: const EdgeInsets.all(10.0), // Padding teks isi
            child: Text(
              longText, // Menampilkan teks panjang
              style: const TextStyle(
                fontSize: 20.0,
              ),
              softWrap: true, // Mengizinkan teks terpotong ke baris berikutnya
            ),
          ),
        ],
      ),
    );
  }
}
