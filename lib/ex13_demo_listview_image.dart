import 'package:flutter/material.dart'; 

void main() {
  runApp(const MyApp()); // Fungsi utama menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Image App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan visual adaptif
      ),
      home: const Home(), // Halaman utama diarahkan ke widget Home
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Konstruktor widget Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Listview Image'), // Judul di AppBar
      ),
      body: ListView( // Menampilkan daftar vertikal yang bisa discroll
        children: <Widget>[
          Image.asset(
            'images/kemdikbud.png', 
            height: 250.0, // Tinggi gambar
            fit: BoxFit.fill, // Mengisi seluruh area gambar
          ),
          const Divider(), // Garis pemisah antar elemen
          Image.asset(
            'images/polbeng.png', 
            height: 250.0,
            fit: BoxFit.cover, // Menyesuaikan isi gambar dengan rasio
          ),
        ],
      ),
    );
  }
}
