// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Assets'),
//         centerTitle: true,
//       ),
//       body: ListView(children: [
//         Image(
//           height: 350,
//   image: AssetImage('assets/bg.jpg'),
// ),
// // Text('Tes Font', style: TextStyle(fontSize: 30, fontFamily: 'Rowdies'),),
// Text(
//   'Tes Font', 
//   style: GoogleFonts.fuggles(fontSize: 30),
//   ),
// Image(
//   height: 150,
//   image: AssetImage('assets/logo.png'),
// ),
// Image.asset('assets/logo.png'),
// Image.network('https://picsum.photos/id/237/200/300'),
//       ],),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:assets_bottomsheet_navigation/contact.dart';
import 'galeri.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 23, 28, 108),
          title: Row(
            children: [
              Image.asset('assets/kos.png', height: 40,),
              Text('KosApp',
                style: GoogleFonts.croissantOne(fontSize: 30),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 23, 28, 108),
                ),
                child: Text(
                  'Menu Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
      title: Text('Galeri'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GaleriPage()), // Arahkan ke halaman GaleriPage
        );
      },
    ),
     ListTile(
      title: Text('Kontak'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactPage()),
        );
      },
    ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Image(
                      height: 350,
                      image: AssetImage('assets/pinguin.jpeg'),
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Selamat Datang Perantau',
                    style: GoogleFonts.actor(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 23, 28, 108),
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
              label: 'Profil',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}