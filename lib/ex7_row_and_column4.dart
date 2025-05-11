import 'package:flutter/material.dart'; 
void main() {
  runApp(const MyApp()); // Fungsi utama menjalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor dengan key opsional

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Row Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna tema biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Penyesuaian tampilan
      ),
      home: const Home(), // Widget Home sebagai halaman utama
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Column & Row Widget'), // Judul AppBar
      ),
      body: Center(
        child: Column( // Kolom vertikal berisi beberapa Row
          mainAxisAlignment: MainAxisAlignment.center, // Konten ditengah secara vertikal
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Rata tengah horizontal
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 1'), // Tombol pertama
                  onPressed: () {},
                ),
                Container(
                  width: 10, // Jarak horizontal antar tombol
                ),
                ElevatedButton(
                  child: const Text('Button 2'), // Tombol kedua
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10), // Jarak antar baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 3'), // Tombol ketiga
                  onPressed: () {},
                ),
                Container(
                  width: 10,
                ),
                ElevatedButton(
                  child: const Text('Button 4'), // Tombol keempat
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10), // Jarak antar baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 5'), // Tombol kelima
                  onPressed: () {},
                ),
                Container(
                  width: 10,
                ),
                ElevatedButton(
                  child: const Text('Button 6'), // Tombol keenam
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
