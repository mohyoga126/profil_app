import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Diri',
      home: const ProfilApp(),
    );
  }
}

class ProfilApp extends StatefulWidget {
  const ProfilApp({Key? key}) : super(key: key);

  @override
  State<ProfilApp> createState() => _ProfilAppState();
}

class _ProfilAppState extends State<ProfilApp> {
  String pesan = '';

  void tampilkanPesan() {
    setState(() {
      pesan = 'Profil telah dilihat!';
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Terima kasih telah melihat profil saya!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Diri'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Foto Profil
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue.shade200,
                  child: const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20),

                // Nama
                const Text(
                  'Mochammad Fauzan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),

                // Posisi/Pekerjaan
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),

                // Row: Icon + Informasi
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.email, color: Colors.blue, size: 20),
                    const SizedBox(width: 8),
                    const Text(
                      'fauzan@email.com',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.phone, color: Colors.blue, size: 20),
                    const SizedBox(width: 8),
                    const Text(
                      '+62 812-3456-7890',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.blue, size: 20),
                    const SizedBox(width: 8),
                    const Text(
                      'Sidoarjo, Jawa Timur',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Tombol Lihat Profil
                ElevatedButton.icon(
                  onPressed: tampilkanPesan,
                  icon: const Icon(Icons.visibility),
                  label: const Text('Lihat Profil'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Pesan dari tombol
                if (pesan.isNotEmpty)
                  Text(
                    pesan,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
