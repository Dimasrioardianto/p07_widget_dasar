import 'package:flutter/material.dart'; // Import library Flutter Material untuk membangun UI

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root
}

// Widget utama aplikasi, tidak bisa berubah
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan visual disesuaikan platform
      ),
      home: const CounterPage(), // Halaman utama
    );
  }
}

// Widget Stateful yang bisa berubah saat ada aksi (counter bertambah/berkurang)
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0; // Variabel untuk menyimpan nilai counter

  // Fungsi untuk menambah counter
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Fungsi untuk mengurangi counter
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget Demo'), // Judul AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menengahkan konten secara vertikal
          children: <Widget>[
            Text(
              'Nilai counter : $counter', // Menampilkan nilai counter
              style: const TextStyle(fontSize: 30), // Ukuran teks 30
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Menengahkan tombol secara horizontal
              children: <Widget>[
                ElevatedButton(
                  child: const Text('<'), // Tombol pengurangan
                  onPressed: decrementCounter, // Panggil fungsi decrement
                ),
                Container(
                  width: 10.0, // Jarak antar tombol
                ),
                ElevatedButton(
                  child: const Text('>'), // Tombol penambahan
                  onPressed: incrementCounter, // Panggil fungsi increment
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
