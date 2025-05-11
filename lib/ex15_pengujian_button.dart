import 'package:flutter/material.dart'; // Import pustaka Material Design

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adaptasi tampilan
      ),
      home: const Home(), // Menampilkan halaman utama: Home
    );
  }
}

// Widget Home bersifat Stateful karena bisa berubah
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState(); // Menghubungkan ke state
}

class HomeState extends State<Home> {
  String fileName = 'images/kemdikbud.png'; // File gambar default

  // Fungsi untuk memilih gambar sesuai tombol ditekan
  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/kemdikbud.png';
          break;
        case 1:
          fileName = 'images/polbeng.png';
          break;
        case 2:
          fileName = 'images/vokasi.png';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            onPressed: () {
              selectImage(0); // Gambar Kemdikbud
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            onPressed: () {
              selectImage(1); // Gambar Polbeng
            },
          ),
          IconButton(
            icon: const Icon(Icons.anchor),
            onPressed: () {
              selectImage(2); // Gambar Vokasi
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            fileName,
            height: 350.0,
            fit: BoxFit.fill, // Gambar memenuhi lebar
          ),
        ],
      ),
    );
  }
}
