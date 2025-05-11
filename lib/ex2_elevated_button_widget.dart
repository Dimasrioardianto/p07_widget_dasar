import 'package:flutter/material.dart'; // Import pustaka UI Flutter

void main() {
  runApp(const MyApp()); // Fungsi utama yang menjalankan aplikasi dengan widget MyApp
}

// Widget utama aplikasi, tidak berubah-ubah (StatelessWidget)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Handling App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Tema utama warna biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Sesuaikan tampilan antar platform
      ),
      home: const HomePage(), // Halaman awal adalah HomePage
    );
  }
}

// Halaman utama aplikasi
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Event Handling'), // Judul di AppBar
      ),
      body: const Center(
        child: HelloButton(), // Menampilkan tombol HelloButton di tengah layar
      ),
    );
  }
}

// Widget tombol yang akan memicu aksi saat ditekan
class HelloButton extends StatelessWidget {
  const HelloButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Hello'), // Teks tombol
      onPressed: () { 
        action(context); // Aksi yang dilakukan saat tombol ditekan
      },
    );
  }
}

// Fungsi untuk menampilkan dialog
void action(BuildContext buildContext) {
  // Membuat AlertDialog berisi teks
  var alertDialog = const AlertDialog(
    title: Text('Event-Handling'),
    content: Text('Hallo dunia'),
  );

  // Menampilkan dialog ke layar
  showDialog(
    context: buildContext,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );
}
