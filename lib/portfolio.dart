import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar foto yang akan ditampilkan
    final List<String> photoPaths = [
      'assets/images/porto1.jpg', // path foto
      'assets/images/porto2.jpg',
      'assets/images/porto3.jpg',
      'assets/images/porto4.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Porto Saya"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom
            crossAxisSpacing: 10.0, // Jarak horizontal antar foto
            mainAxisSpacing: 10.0, // Jarak vertikal antar foto
          ),
          itemCount: photoPaths.length, // Jumlah foto
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0), // Membuat sudut foto melengkung
              child: Image.asset(
                photoPaths[index],
                fit: BoxFit.cover, // Menyesuaikan ukuran foto
              ),
            );
          },
        ),
      ),
    );
  }
}
