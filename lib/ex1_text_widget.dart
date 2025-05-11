import 'package:flutter/material.dart'; // Import library material design untuk membangun UI Flutter

void main() {
  runApp(const MyApp()); // Fungsi utama untuk menjalankan aplikasi dan memanggil widget MyApp
}

// Widget utama yang tidak berubah (Stateless)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor untuk widget MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna tema utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Menyesuaikan kepadatan tampilan sesuai platform
      ),
      home: Scaffold( // Struktur tampilan utama aplikasi
        appBar: AppBar(
          title: const Text('Demo Text Widget'), // Judul di bagian atas aplikasi
        ),
        body: const Center( // Menempatkan konten di tengah layar
          child: Text(
            'Rekayasa Perangkat Lunak', // Teks yang ditampilkan di tengah layar
            textDirection: TextDirection.ltr, // Arah teks dari kiri ke kanan
            style: TextStyle(
              fontSize: 30.0, // Ukuran font 30
              fontStyle: FontStyle.italic, // Gaya font miring (italic)
              color: Colors.red, // Warna teks merah
            ),
          ),
        ),
      ),
    );
  }
}
