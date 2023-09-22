// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   ListTile buildListTile(String name) {
//     return ListTile(
//       title: Text(name),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//         backgroundColor: Color(0xFFDCD0FF),
//           title: Center(
//           child: Text('Contacts',
//           style: TextStyle(
//             color: Colors.black
//           ),),
//           ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//         ),
//         body: Center(
//   child: Column(
//     children: [
//       SizedBox(height: 16.0),
//       Icon(
//         Icons.contact_page_outlined,
//         size: 32.0,
//         color: Color.fromARGB(255, 200, 186, 249),
//       ),
//       SizedBox(height: 16.0),
//       Text(
//         'Create New Contacts',
//         style: TextStyle(
//           fontSize: 24.0,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       Text('To keep your contacts organized and easily accessible, please provide the following information to create a new contact. You can enter the person\'s name and phone number, and we\'ll take care of the rest. Creating a new contact has never been easier!',
//       style: TextStyle(
//           color: Color(0xFF5F5E5E),
//         ),
//       ),
//       SizedBox(height: 16.0),
//               Column(
//    children: [
//     Container(
//       padding: EdgeInsets.all(16.0),
//       color: Color(0xFFDCD0FF),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Name',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 4.0), // Jarak antara label "Name" dan input
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Insert your name',
//               border: InputBorder.none,
//             ),
//           ),
//         ],
//       ),
//     ),
//     SizedBox(height: 16.0), // Tambahkan jarak antara input Name dan Phone Number
//     Container(
//       padding: EdgeInsets.all(16.0),
//       color: Color(0xFFDCD0FF),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Nomor',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 2.0), // Jarak antara label "Name" dan input
//           TextField(
//             decoration: InputDecoration(
//               hintText: '+62 .....',
//               border: InputBorder.none,
//             ),
//           ),
//         ],
//       ),
//     ),
//     SizedBox(height: 6.0),
//     Align(
//       alignment: Alignment.centerRight, // Mengatur tombol ke ujung kanan
//       child: ElevatedButton(
//         onPressed: () {
//           // Tambahkan logika untuk menangani penekanan tombol submit di sini
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Color.fromARGB(255, 91, 76, 138),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//         ),
//         child: Text(
//           'Submit',
//         ),
//       ),
//     ),
//   ],
// ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Color(0xFFDCD0FF),
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite),
//               label: 'Favorites',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.info),
//               label: 'Information',
//             ),
//           ],
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.black,
//         ),
//       ),
//     );
//   }
// }