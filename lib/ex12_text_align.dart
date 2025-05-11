import 'package:flutter/material.dart'; 

void main() {
  runApp(const MyApp()); // Fungsi utama untuk menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextAlign App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Penyesuaian tampilan antar perangkat
      ),
      home: const Home(), // Widget Home sebagai halaman utama
    );
  }
}

class Home extends StatelessWidget {
  // Deklarasi teks dengan berbagai pengaturan arah dan perataan
  final String teks1 = 
  '''Nilai TextAlign.start pada teks dengan TextDirection.ltr''';
  final String teks2 = 
  '''Nilai TextAlign.end pada teks dengan TextDirection.lt''';
  final String teks3 = 
  '''Nilai TextAlign.start pada teks dengan TextDirection.rtl''';
  final String teks4 = 
  '''Nilai TextAlign.end pada teks dengan TextDirection.rtl''';

  const Home({Key? key}) : super(key: key); // Konstruktor widget Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.textAlign'), // Judul AppBar
      ),
      body: Column( // Menyusun teks secara vertikal
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0), // Memberi margin 10 di semua sisi
            child: Text(
              teks1, // Menampilkan teks 1
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr, // Arah teks dari kiri ke kanan
              textAlign: TextAlign.start, // Teks diratakan ke awal (kiri)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks2, // Menampilkan teks 2
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr, // Arah teks kiri ke kanan
              textAlign: TextAlign.end, // Teks diratakan ke akhir (kanan)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks3, // Menampilkan teks 3
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl, // Arah teks kanan ke kiri
              textAlign: TextAlign.start, // Start berarti rata kanan (karena RTL)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5.0),
            child: Text(
              teks4, // Menampilkan teks 4
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl, // Arah teks kanan ke kiri
              textAlign: TextAlign.end, // End berarti rata kiri (karena RTL)
            ),
          ),
        ],
      ),
    );
  }
}
