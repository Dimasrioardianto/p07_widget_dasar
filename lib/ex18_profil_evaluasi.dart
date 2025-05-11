import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Saya', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue),
      home: const ProfilMahasiswa(), // Halaman utama
    );
  }
}

class ProfilMahasiswa extends StatelessWidget {
  const ProfilMahasiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'), // Judul AppBar
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20), // Spasi atas
            Image.asset(
              'images/dimas.jpg', // Gambar profil
              height: 150,
            ),
            const SizedBox(height: 10),
            const Text('Nama Lengkap: Dimas Ardianto'),
            const Text('Tempat, Tanggal Lahir: Siak, 31 Maret 2004'),
            const Text('Email: dimas@email.com'),
            const Text('Nomor HP: 081234567890'),
            const Text('Hobi: Bermain Bola dan Bermain Game'),
          ],
        ),
      ),
    );
  }
}
