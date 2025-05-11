 import 'package:flutter/material.dart'; // Import library Flutter Material

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor widget utama

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.only App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna tema utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Penyesuaian tampilan ke perangkat
      ),
      home: const Home(), // Menampilkan halaman Home
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Konstruktor widget Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode EdgeInsets.only'), // Judul AppBar
      ),
      body: Row( // Menyusun widget secara horizontal
        children: <Widget>[
          Expanded( // Memperluas anak agar mengisi ruang tersedia
            child: Container(
              color: Colors.tealAccent, // Warna latar belakang container
              margin: const EdgeInsets.only( // Margin hanya sisi atas
                top: 50.0,
              ),
              padding: const EdgeInsets.only( // Padding hanya sisi kiri, atas, kanan
                left: 70.0,
                top: 10.0,
                right: 10.0,
              ),
              child: ElevatedButton(
                child: const Text('Button'), // Teks di tombol
                onPressed: () {}, // Aksi saat tombol ditekan (kosong)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
