import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deskripsi Hari', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue), // Tema biru
      home: const DeskripsiHari(), // Halaman utama
    );
  }
}

class DeskripsiHari extends StatefulWidget {
  const DeskripsiHari({Key? key}) : super(key: key);

  @override
  State<DeskripsiHari> createState() => _DeskripsiHariState(); // State
}

class _DeskripsiHariState extends State<DeskripsiHari> {
  String hariText = ''; // Variabel penyimpan deskripsi

  // Fungsi mengubah deskripsi sesuai hari
  void setDeskripsi(String hari) {
    setState(() {
      switch (hari) {
        case 'Senin':
          hariText = 'Hari yang luar biasa untuk memulai pekerjaanmu.';
          break;
        case 'Selasa':
          hariText = 'Tetap semangat mengerjakan tugas.';
          break;
        case 'Rabu':
          hariText = 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.';
          break;
        case 'Kamis':
          hariText = 'Kerja keras untuk menggapai cita-cita.';
          break;
        case 'Jumat':
          hariText = 'Jangan lupa untuk beribadah.';
          break;
        case 'Sabtu':
          hariText = 'Selamat weekend.';
          break;
        case 'Minggu':
          hariText = 'Manfaatkan hari Minggumu untuk istirahat.';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deskripsi Hari')), // Judul AppBar
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Padding isi body
        child: Column(
          children: [
            Wrap( // Untuk membuat tombol per hari
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var hari in ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'])
                  ElevatedButton(
                    onPressed: () => setDeskripsi(hari), // Klik -> tampilkan deskripsi
                    child: Text(hari),
                  )
              ],
            ),
            const SizedBox(height: 20), // Spasi
            Text(
              hariText, // Tampilkan deskripsi
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
