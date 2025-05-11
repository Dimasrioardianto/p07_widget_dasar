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
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adaptasi tampilan
      ),
      home: const Home(), // Menampilkan halaman utama: Home
    );
  }
}

// Widget Home bersifat Stateful karena akan berubah saat tombol ditekan
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState(); // Menghubungkan ke state-nya
}

class HomeState extends State<Home> {
  String fileName = 'images/kemdikbud.png'; // Variabel untuk menyimpan nama file gambar

  // Fungsi untuk mengubah gambar berdasarkan tombol yang ditekan
  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/kemdikbud.png';
          break;
        case 1:
          fileName = 'images/polbeng.png';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Bagian atas layar (AppBar)
        title: const Text('Demo Action Button'), // Judul pada AppBar
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop), // Tombol icon pertama
            onPressed: () {
              selectImage(0); // Tampilkan gambar pertama
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance), // Tombol icon kedua
            onPressed: () {
              selectImage(1); // Tampilkan gambar kedua
            },
          ),
        ],
      ),
      body: ListView( // Tampilan scrollable
        children: <Widget>[
          Image.asset(
            fileName, // Gambar yang ditampilkan berdasarkan variabel fileName
            height: 350.0,
            fit: BoxFit.fill, // Menyesuaikan gambar memenuhi area
          ),
        ],
      ),
    );
  }
}
