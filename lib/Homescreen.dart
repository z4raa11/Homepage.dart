import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        backgroundColor: Colors.pink.shade100,
        centerTitle: true,
      ),
      body: SingleChildScrollView( // biar aman dari overflow
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Kotak besar di atas dengan gambar dari link
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 220,
                width: 1070, // tidak full biar lebih pas
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.pink.shade100,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/Danau-Toba-edited.jpg", // 👉 link gambar
                    fit: BoxFit.cover, // biar pas memenuhi kotak
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Kotak 4 dibawah (2x2)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _GridBox(),
                    SizedBox(width: 20),
                    _GridBox(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _GridBox(),
                    SizedBox(width: 20),
                    _GridBox(),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // ikon 3 bawah
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _CircleIcon(Icons.home),
                _CircleIcon(Icons.info),
                _CircleIcon(Icons.person),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Kotak grid4
class _GridBox extends StatelessWidget {
  const _GridBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,  // tidak panjang penuh
      height: 160,
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

// Lingkaran ikon bawah
class _CircleIcon extends StatelessWidget {
  final IconData icon;
  const _CircleIcon(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.pink.shade100, width: 2),
      ),
      child: Icon(icon, color: Colors.pink.shade100, size: 30),
    );
  }
}
