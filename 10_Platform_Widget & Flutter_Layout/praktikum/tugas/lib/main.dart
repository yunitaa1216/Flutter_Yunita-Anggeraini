import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ListTile buildListTile(String name) {
    return ListTile(
      title: Text(name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF6200EE),
          title: Center(
          child: Text('My Flutter App'),
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        ),
        body: ListView(
          children: [
            buildListTile('Learn Flutter'),
            Divider(),
            buildListTile('Learn Dart'),
            Divider(),
            buildListTile('Learn Widgets'),
            Divider(),
            buildListTile('Learn UI Design'),
            Divider(),
            buildListTile('Learn State Management'),
            Divider(),
            buildListTile('Learn Routing'),
            Divider(),
            buildListTile('Learn Figma'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF6200EE),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Information',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF03DAC5), // Atur warna latar belakang FAB
          child: Icon(Icons.add), // Tambahkan ikon yang ingin ditampilkan di FAB
        ),
      ),
    );
  }
}