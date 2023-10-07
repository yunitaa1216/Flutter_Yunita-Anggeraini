// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:latihan/stores/contact.dart' as contact_store;
// import 'package:dio/dio.dart';

// import 'home_page.dart';
// // import 'state_management.dart';
// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(create: (_) => contact_store.Contact(),
//     ),
//   ],
//   child: const MyApp(),
//   ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Phone Book App',
//       home: HomePage(),
//       // title: 'Flutter State Managemt',
//       // home: StateManagement(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:latihan/stores/contact.dart' as contact_store;
import 'package:dio/dio.dart'; // Import Dio

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = Dio(); // Buat instance Dio di sini

    return MaterialApp(
      title: 'Phone Book App',
      home: ChangeNotifierProvider.value(
        value: dio, // Berikan instance Dio ke HomePage atau Contact
        child: HomePage(),
      ),
    );
  }
}
