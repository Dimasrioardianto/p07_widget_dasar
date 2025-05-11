import 'package:flutter/material.dart'; // Import library Flutter Material

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan MyApp sebagai root widget
}

// Widget utama aplikasi yang tidak berubah (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan tampilan disesuaikan
      ),
      home: const Home(), // Menampilkan widget Home sebagai halaman utama
    );
  }
}

// Widget Home menampilkan tombol-tombol secara vertikal
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Column Widget'), // Judul AppBar
      ),
      body: Center(
        child: Column( // Menyusun widget secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Rata tengah secara vertikal
          children: <Widget>[
            ElevatedButton(
              child: const Text('Button 1'), // Tombol pertama
              onPressed: () {}, // Fungsi kosong saat ditekan
            ),
            Container(height: 10), // Spasi antar tombol saya rubah ke height
            ElevatedButton(
              child: const Text('Button 2'), // Tombol kedua
              onPressed: () {},
            ),
            Container(height: 10),
            ElevatedButton(
              child: const Text('Button 3'), // Tombol ketiga
              onPressed: () {},
            ),
            Container(height: 10),
            ElevatedButton(
              child: const Text('Button 4'), // Tombol keempat
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
