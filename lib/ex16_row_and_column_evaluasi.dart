import 'package:flutter/material.dart'; // Import library material

void main() {
  runApp(const MyApp()); // Fungsi utama menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor widget MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menampilkan data - data', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue), // Tema biru
      home: const DataMahasiswa(), // Arahkan ke halaman DataMahasiswa
    );
  }
}

class DataMahasiswa extends StatelessWidget {
  const DataMahasiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menampilkan Data Nim Dan Nama')), // Judul di AppBar
      body: Column( // Gunakan Column untuk susun vertikal
        children: [
          const SizedBox(height: 20), // Jarak atas
          Row( // Header tabel
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('No', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('NIM', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('NAMA', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(), // Garis pemisah
          Row( // Baris data 1
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('1'),
              Text('1106315'),
              Text('Depandi Enda'),
            ],
          ),
          Row( // Baris data 2
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('2'),
              Text('1106316'),
              Text('Budi Handoyo'),
            ],
          ),
        ],
      ),
    );
  }
}
