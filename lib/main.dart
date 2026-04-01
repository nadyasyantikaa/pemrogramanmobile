import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Flutter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 29, 90, 195),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline),
              onPressed: () {
                // Aksi ketika tombol info ditekan
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Informasi'),
                    content: const Text(
                      'Ini adalah aplikasi Flutter sederhana.',
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                // Aksi ketika tombol logout ditekan
              },
            ),
          ],
          // leading: IconButton(
          //   icon: const Icon(Icons.book),
          //   onPressed: () {
          //     // Aksi ketika tombol menu ditekan
          //   },
          // ),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: 550,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 222, 246),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.purple, width: 2),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 231, 222, 244),
                    Color.fromARGB(255, 141, 20, 20),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text(
                'Selamat datang di aplikasi flutter!',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  // Aksi tombol ditekan
                },
                child: const Text('Tekan Saya'),
              ),
            ),
          ],

          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     Text(
          //       'Selamat Datang di Flutter!',
          //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //     ),
          //     Icon(Icons.flutter_dash, size: 40, color: Colors.blue),
          //   ],
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   Text(
          //     'Balonku Ada 5\n',
          //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //   ),
          //   Text('Balonku Ada 5.'),
          //   Text('Rupa-rupa warnanya.'),
          //   Text('Hijau, Kuning, Kelabu, Merah muda, dan Biru.'),
          //   Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text('Meletus balon hijau,'),
          //       Text('DOR!'),
          //       Text('Hatiku sangat kacau.'),
          //       Text('Balonku tinggal 4.'),
          //       Text('Kupegang erat-erat.'),
          //     ],
          //   ),
          // Container(
          //   margin: const EdgeInsets.all(16),
          //   padding: EdgeInsets.zero,
          //   // decoration: BoxDecoration(
          //   //   color: Colors.blue[100],
          //   //   borderRadius: BorderRadius.circular(8),
          //   // ),
          //   child: Column(
          //     children: [
          //       Text(
          //         'Meletus balon hijau dor, hatiku sangat kacau.',
          //         style: TextStyle(fontSize: 18),
          //       ),
          //       Text(
          //         'Balonku tinggal 4, kupegang erat-erat.',
          //         style: TextStyle(fontSize: 18),
          //       ),
          //     ],
          //   ),
          //   // child: const Text(
          //   //   'Meletus balon hijau dor, hatiku sangat kacau.',
          //   //   style: TextStyle(fontSize: 18),
          //   // ),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(16),
          //   child: const Text(
          //     'Selamat Datang di aplikasi Flutter!',
          //     style: TextStyle(fontSize: 18),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(16),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       // Aksi ketika tombol ditekan
          //     },
          //     child: const Text('Tekan Saya'),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(16),
          //   child: const Text(
          //     'Ini adalah aplikasi Flutter sederhana.',
          //     style: TextStyle(fontSize: 16),
          //   ),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Aksi ketika tombol FAB ditekan
          },
          child: const Icon(Icons.send),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'Hapus'),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
