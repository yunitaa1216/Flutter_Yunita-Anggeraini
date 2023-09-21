// menghindari error

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title:const Text('Material App'),
//         ),
//         body:const Center(
//           child: Text('This is material App'),
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
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Setting',
//           ),
//           ],
//         ),
//       ),
//     );
//   }
// }