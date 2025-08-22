import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [






            // HEADER BOX
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.pink.shade100,
                        child: const Icon(Icons.person,
                            size: 30, color: Colors.white),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Rachel vennya",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text("No bio",
                              style: TextStyle(color: Colors.black54)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),







                  // 3 ikon bulat (bukan 4 lagi)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.pink.shade100,
                          child:
                              const Icon(Icons.star, color: Colors.white)),
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.pink.shade100,
                          child:
                              const Icon(Icons.favorite, color: Colors.white)),
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.pink.shade100,
                          child: const Icon(Icons.settings,
                              color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),





            

            // PENGATURAN PROFIL
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Pengaturan Profil",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade300),
              ),
            ),
            const SizedBox(height: 10),






            // Daftar menu pengaturan (pakai desain list/kartu)
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                SettingCard(
                    icon: Icons.lock, judul: "Keamanan", sub: "Atur password & privasi"),
                SettingCard(
                    icon: Icons.notifications,
                    judul: "Notifikasi",
                    sub: "Kelola notifikasi aplikasi"),
                SettingCard(
                    icon: Icons.color_lens,
                    judul: "Tampilan",
                    sub: "Ubah tema & warna aplikasi"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



// Widget Kartu Pengaturan
class SettingCard extends StatelessWidget {
  final IconData icon;
  final String judul;
  final String sub;

  const SettingCard({
    super.key,
    required this.icon,
    required this.judul,
    required this.sub,
  });

  @override

  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.pink.shade100,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(judul,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(sub),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
