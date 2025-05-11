import 'package:flutter/material.dart'; // Mengimpor package material dari Flutter

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Konstruktor MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Column Widget App', // Judul aplikasi
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue, // Warna utama biru
        visualDensity: VisualDensity.adaptivePlatformDensity, // Kepadatan visual disesuaikan
      ),
      home: const Home(), // Menentukan widget Home sebagai tampilan utama
    );
  }
}
 
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Konstruktor Home

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Row & Column Widget'), // Judul di AppBar
      ),
      body: Center(
        child: Row( // Menggunakan Row untuk menyusun beberapa kolom secara horizontal
          mainAxisAlignment: MainAxisAlignment.center, // Posisi ditengah secara horizontal
          children: <Widget>[
            Column( // Kolom pertama
              mainAxisAlignment: MainAxisAlignment.center, // Posisi tengah vertikal
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 1'),
                  onPressed: () {},
                ),
                SizedBox(height: 10), // Jarak antara Button 1 dan Button 2
                ElevatedButton(
                  child: const Text('Button 2'),
                  onPressed: () {},
                ),
              ],
            ),
            Container( // Jarak antar kolom
              width: 10,
            ),
            Column( // Kolom kedua
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 3'),
                  onPressed: () {},
                ),
                SizedBox(height: 10), // Jarak antara Button 3 dan Button 4
                ElevatedButton(
                  child: const Text('Button 4'),
                  onPressed: () {},
                ),
              ],
            ),
            Container( // Jarak antar kolom
              width: 10,
            ),
            Column( // Kolom ketiga
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Button 5'),
                  onPressed: () {},
                ),
                SizedBox(height: 10), // Jarak antara Button 5 dan Button 6
                ElevatedButton(
                  child: const Text('Button 6'),
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
