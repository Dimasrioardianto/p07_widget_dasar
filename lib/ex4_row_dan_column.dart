import 'package:flutter/material.dart'; // Import library UI Flutter

void main() {
  runApp(const MyApp()); // Fungsi utama menjalankan aplikasi Flutter
}

// Widget utama aplikasi, tidak berubah (Stateless)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Tampilan disesuaikan dengan perangkat
      ),
      home: const Home(), // Halaman utama diarahkan ke widget Home
    );
  }
}

// Widget Home menampilkan tampilan utama
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Row Widget'), // Judul AppBar
      ),
      body: Center(
        child: Row( // Gunakan Row untuk menyusun widget secara horizontal
          mainAxisAlignment: MainAxisAlignment.center, // Semua elemen rata tengah secara horizontal
          children: <Widget>[
            ElevatedButton(
              child: const Text('Button 1'), // Tombol pertama
              onPressed: () {}, // Aksi kosong saat ditekan
            ),
            Container(width: 10), // Jarak antar tombol
            ElevatedButton(
              child: const Text('Button 2'), // Tombol kedua
              onPressed: () {}, // Aksi kosong saat ditekan
            ),
            Container(width: 10), // Jarak antar tombol
            ElevatedButton(
              child: const Text('Button 3'), // Tombol ketiga
              onPressed: () {}, // Aksi kosong saat ditekan
            ),
            Container(width: 10), // Jarak antar tombol
            ElevatedButton(
              child: const Text('Button 4'), // Tombol keempat
              onPressed: () {}, // Aksi kosong saat ditekan
            ),
          ],
        ),
      ),
    );
  }
}
