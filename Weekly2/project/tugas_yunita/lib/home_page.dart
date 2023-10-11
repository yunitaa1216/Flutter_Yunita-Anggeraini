import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, dynamic>> daftarJasaKos = [
  {
    'gambar': 'assets/kos_1.jpg',
    'nama': 'Kos Amanah',
    'deskripsi': 'Kos nyaman dengan fasilitas lengkap di pusat kota.',
    'harga': 'Rp 1.000.000/bulan',
  },
  {
    'gambar': 'assets/kos_2.jpg',
    'nama': 'Kos Harmoni',
    'deskripsi': 'Kos bersih dengan akses mudah ke transportasi umum.',
    'harga': 'Rp 800.000/bulan',
  },
  {
    'gambar': 'assets/kos_3.jpg',
    'nama': 'Kos Bahagia',
    'deskripsi': 'Kos modern dengan wifi cepat dan area bersama.',
    'harga': 'Rp 1.200.000/bulan',
  },
  {
    'gambar': 'assets/kos_4.jpg',
    'nama': 'Kos Sejahtera',
    'deskripsi': 'Kos strategis dekat dengan pusat perbelanjaan.',
    'harga': 'Rp 900.000/bulan',
  },
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Row(
            children: [
              Image.asset('assets/KosApp.png', height: 160),
            ],
          ),
          actions: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/bgg.jpg'),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Temukan Kos Terbaik',
                          style: GoogleFonts.openSans(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kemudahan Pencarian & Booking',
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'About Us',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Daftar Kos',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: (daftarJasaKos.length / 2).ceil(),
                        itemBuilder: (context, index) {
                          final firstJasaKos = daftarJasaKos[index * 2];
                          final secondJasaKos = (index * 2 + 1 < daftarJasaKos.length) ? daftarJasaKos[index * 2 + 1] : null;
                          return Row(
                            children: [
                              Expanded(
                                child: Card(
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 16 / 9,
                                        child: Image.asset(
                                          firstJasaKos['gambar'],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(firstJasaKos['nama']),
                                        subtitle: Text(firstJasaKos['deskripsi']),
                                      ),
                                      ListTile(
                                        title: Text(firstJasaKos['harga']),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (secondJasaKos != null)
                                Expanded(
                                  child: Card(
                                    child: Column(
                                      children: [
                                        AspectRatio(
                                          aspectRatio: 16 / 9,
                                          child: Image.asset(
                                            secondJasaKos['gambar'],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(secondJasaKos['nama']),
                                          subtitle: Text(secondJasaKos['deskripsi']),
                                        ),
                                        ListTile(
                                          title: Text(secondJasaKos['harga']),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Contact Us',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Nama',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                            },
                            icon: Icon(Icons.send),
                            label: Text('Send'),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 22, 41, 94),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
          ),
          endDrawer: Drawer(
            child: Container(
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
}