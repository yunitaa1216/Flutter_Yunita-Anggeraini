// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   ListTile buildListTile(String name, String phoneNumber) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundColor: Colors.green,
//         child: Text(name[0]), // Ini akan menampilkan huruf pertama dari nama depan
//       ),
//       title: Text(name),
//       subtitle: Text(phoneNumber),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text(
//             'Material App',
//             style: TextStyle(
//               color: Colors.black, // Mengatur warna teks judul menjadi hitam
//             ),
//           ),
//           iconTheme: IconThemeData(
//             color: Colors.black, // Mengatur warna ikon hamburger menjadi hitam
//           ),
//         ),
//         body: ListView(
//           children: [
//             buildListTile('John Doe', '0821-1111-2222'),
//             buildListTile('Jane Smith', '0821-1111-3333'),
//             buildListTile('Alice', '0821-1111-1234'),
//             buildListTile('Bob', '0821-1111-4567'),
//             buildListTile('Bob', '0821-1111-4444'),
//             buildListTile('Charlie', '0821-1111-5555'),
//             buildListTile('Yunita Anggeraini', '0821-1111-1212'),
//           ],
//         ),
//         drawer: Theme(
//           data: ThemeData.dark(),
//           child: Drawer(
//             child: ListView(
//               children: [
//                 ListTile(
//                   title: Text('Home'),
//                 ),
//                 ListTile(
//                   title: Text('Setting'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: 'Setting',
//             ),
//           ],
//           selectedItemColor: Colors.black,
//         ),
//       ),
//     );
//   }
// }