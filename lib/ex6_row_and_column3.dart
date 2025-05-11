import 'package:flutter/material.dart'; // Import library Flutter Material

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter
}

// Widget utama, tidak berubah (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Tema warna utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan visual menyesuaikan perangkat
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Row & Column Widget'), // Judul AppBar
        ),
        body: Center(
          child: Column( // Menyusun widget secara vertikal
            mainAxisAlignment: MainAxisAlignment.center, // Rata tengah
            children: <Widget>[
              Row( // Baris pertama
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Baris 1, Kolom 1'),
                  SizedBox(width: 10),
                  Text('Baris 1, Kolom 2'),
                ],
              ),
              const SizedBox(height: 20), // Spasi vertikal
              Row( // Baris kedua
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Baris 2, Kolom 1'),
                  SizedBox(width: 10),
                  Text('Baris 2, Kolom 2'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
