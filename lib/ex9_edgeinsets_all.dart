import 'package:flutter/material.dart'; // Import library Flutter Material

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.all App', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema warna utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan visual adaptif
      ),
      home: const Home(), // Menampilkan widget Home sebagai halaman utama
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Konstruktor widget Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode EdgeInsets.all'), // Judul AppBar
      ),
      body: Row( // Mengatur anak-anak widget secara horizontal
        children: <Widget>[
          Container(
            color: Colors.tealAccent, // Warna latar belakang container
            margin: const EdgeInsets.all(10.0), // Margin di semua sisi sebesar 10
            padding: const EdgeInsets.all(3.0), // Padding di semua sisi sebesar 3
            child: ElevatedButton(
              child: const Text('Button 1'), // Teks pada tombol
              onPressed: () {}, // Aksi kosong saat tombol ditekan
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5.0), // Margin semua sisi 5
            padding: const EdgeInsets.all(10.0), // Padding semua sisi 10
            decoration: BoxDecoration(
              border: Border.all(
                width: 5.0, // Ketebalan border
                color: Colors.red, // Warna border merah
              ),
            ),
            child: ElevatedButton(
              child: const Text('Button 2'), // Teks pada tombol
              onPressed: () {},
            ),
          ),
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0), // Margin 10
            padding: const EdgeInsets.all(3.0), // Padding 3
            child: ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
